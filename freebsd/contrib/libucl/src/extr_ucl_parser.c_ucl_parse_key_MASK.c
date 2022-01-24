#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* key; int keylen; int /*<<< orphan*/  flags; int /*<<< orphan*/ * trash_stack; } ;
typedef  TYPE_2__ ucl_object_t ;
struct ucl_parser {int flags; int /*<<< orphan*/  err; TYPE_1__* chunks; void* state; void* prev_state; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; int remain; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_CHARACTER_KEY ; 
 int /*<<< orphan*/  UCL_CHARACTER_KEY_SEP ; 
 int /*<<< orphan*/  UCL_CHARACTER_KEY_START ; 
 int /*<<< orphan*/  UCL_CHARACTER_WHITESPACE ; 
 int /*<<< orphan*/  UCL_CHARACTER_WHITESPACE_UNSAFE ; 
 int /*<<< orphan*/  UCL_ESYNTAX ; 
 int /*<<< orphan*/  UCL_NULL ; 
 int /*<<< orphan*/  UCL_OBJECT_NEED_KEY_ESCAPE ; 
 int UCL_PARSER_DISABLE_MACRO ; 
 int UCL_PARSER_KEY_LOWERCASE ; 
 void* UCL_STATE_MACRO_NAME ; 
 size_t UCL_TRASH_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct ucl_chunk*,unsigned char const*) ; 
 int FUNC1 (struct ucl_parser*,unsigned char const*,int /*<<< orphan*/ *,char const**,int,int,int,int) ; 
 scalar_t__ FUNC2 (unsigned char const,unsigned char const) ; 
 int /*<<< orphan*/  FUNC3 (struct ucl_parser*,struct ucl_chunk*,int*,int*,int*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ucl_parser*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ucl_parser*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ucl_parser*) ; 
 scalar_t__ FUNC9 (unsigned char const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC10 (struct ucl_parser *parser, struct ucl_chunk *chunk,
		bool *next_key, bool *end_of_object)
{
	const unsigned char *p, *c = NULL, *end, *t;
	const char *key = NULL;
	bool got_quote = false, got_eq = false, got_semicolon = false,
			need_unescape = false, ucl_escape = false, var_expand = false,
			got_content = false, got_sep = false;
	ucl_object_t *nobj;
	ssize_t keylen;

	p = chunk->pos;

	if (*p == '.') {
		/* It is macro actually */
		if (!(parser->flags & UCL_PARSER_DISABLE_MACRO)) {
			FUNC0 (chunk, p);
		}

		parser->prev_state = parser->state;
		parser->state = UCL_STATE_MACRO_NAME;
		*end_of_object = false;
		return true;
	}
	while (p < chunk->end) {
		/*
		 * A key must start with alpha, number, '/' or '_' and end with space character
		 */
		if (c == NULL) {
			if (chunk->remain >= 2 && FUNC2 (p[0], p[1])) {
				if (!FUNC8 (parser)) {
					return false;
				}
				p = chunk->pos;
			}
			else if (FUNC9 (*p, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
				FUNC0 (chunk, p);
			}
			else if (FUNC9 (*p, UCL_CHARACTER_KEY_START)) {
				/* The first symbol */
				c = p;
				FUNC0 (chunk, p);
				got_content = true;
			}
			else if (*p == '"') {
				/* JSON style key */
				c = p + 1;
				got_quote = true;
				got_content = true;
				FUNC0 (chunk, p);
			}
			else if (*p == '}') {
				/* We have actually end of an object */
				*end_of_object = true;
				return true;
			}
			else if (*p == '.') {
				FUNC0 (chunk, p);
				parser->prev_state = parser->state;
				parser->state = UCL_STATE_MACRO_NAME;
				return true;
			}
			else {
				/* Invalid identifier */
				FUNC7 (parser, UCL_ESYNTAX, "key must begin with a letter",
						&parser->err);
				return false;
			}
		}
		else {
			/* Parse the body of a key */
			if (!got_quote) {
				if (FUNC9 (*p, UCL_CHARACTER_KEY)) {
					got_content = true;
					FUNC0 (chunk, p);
				}
				else if (FUNC9 (*p, UCL_CHARACTER_KEY_SEP)) {
					end = p;
					break;
				}
				else {
					FUNC7 (parser, UCL_ESYNTAX, "invalid character in a key",
							&parser->err);
					return false;
				}
			}
			else {
				/* We need to parse json like quoted string */
				if (!FUNC3 (parser, chunk, &need_unescape, &ucl_escape, &var_expand)) {
					return false;
				}
				/* Always escape keys obtained via json */
				end = chunk->pos - 1;
				p = chunk->pos;
				break;
			}
		}
	}

	if (p >= chunk->end && got_content) {
		FUNC7 (parser, UCL_ESYNTAX, "unfinished key", &parser->err);
		return false;
	}
	else if (!got_content) {
		return true;
	}
	*end_of_object = false;
	/* We are now at the end of the key, need to parse the rest */
	while (p < chunk->end) {
		if (FUNC9 (*p, UCL_CHARACTER_WHITESPACE)) {
			FUNC0 (chunk, p);
		}
		else if (*p == '=') {
			if (!got_eq && !got_semicolon) {
				FUNC0 (chunk, p);
				got_eq = true;
			}
			else {
				FUNC7 (parser, UCL_ESYNTAX, "unexpected '=' character",
						&parser->err);
				return false;
			}
		}
		else if (*p == ':') {
			if (!got_eq && !got_semicolon) {
				FUNC0 (chunk, p);
				got_semicolon = true;
			}
			else {
				FUNC7 (parser, UCL_ESYNTAX, "unexpected ':' character",
						&parser->err);
				return false;
			}
		}
		else if (chunk->remain >= 2 && FUNC2 (p[0], p[1])) {
			/* Check for comment */
			if (!FUNC8 (parser)) {
				return false;
			}
			p = chunk->pos;
		}
		else {
			/* Start value */
			break;
		}
	}

	if (p >= chunk->end && got_content) {
		FUNC7 (parser, UCL_ESYNTAX, "unfinished key", &parser->err);
		return false;
	}

	got_sep = got_semicolon || got_eq;

	if (!got_sep) {
		/*
		 * Maybe we have more keys nested, so search for termination character.
		 * Possible choices:
		 * 1) key1 key2 ... keyN [:=] value <- we treat that as error
		 * 2) key1 ... keyN {} or [] <- we treat that as nested objects
		 * 3) key1 value[;,\n] <- we treat that as linear object
		 */
		t = p;
		*next_key = false;
		while (FUNC9 (*t, UCL_CHARACTER_WHITESPACE)) {
			t ++;
		}
		/* Check first non-space character after a key */
		if (*t != '{' && *t != '[') {
			while (t < chunk->end) {
				if (*t == ',' || *t == ';' || *t == '\n' || *t == '\r') {
					break;
				}
				else if (*t == '{' || *t == '[') {
					*next_key = true;
					break;
				}
				t ++;
			}
		}
	}

	/* Create a new object */
	nobj = FUNC4 (UCL_NULL, parser->chunks->priority);
	keylen = FUNC1 (parser, c, &nobj->trash_stack[UCL_TRASH_KEY],
			&key, end - c, need_unescape, parser->flags & UCL_PARSER_KEY_LOWERCASE, false);
	if (keylen == -1) {
		FUNC5 (nobj);
		return false;
	}
	else if (keylen == 0) {
		FUNC7 (parser, UCL_ESYNTAX, "empty keys are not allowed", &parser->err);
		FUNC5 (nobj);
		return false;
	}

	nobj->key = key;
	nobj->keylen = keylen;

	if (!FUNC6 (parser, nobj)) {
		return false;
	}

	if (ucl_escape) {
		nobj->flags |= UCL_OBJECT_NEED_KEY_ESCAPE;
	}


	return true;
}