#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ ucl_object_t ;
struct ucl_parser {int state; int prev_state; int flags; TYPE_3__* last_comment; TYPE_3__* top_obj; TYPE_2__* stack; TYPE_3__* cur_obj; int /*<<< orphan*/  err; struct ucl_chunk* chunks; int /*<<< orphan*/  macroes; } ;
struct TYPE_15__ {int (* context_handler ) (unsigned char const*,size_t,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ;int (* handler ) (unsigned char const*,size_t,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct ucl_macro {int /*<<< orphan*/  ud; TYPE_1__ h; int /*<<< orphan*/  is_context; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; int /*<<< orphan*/  column; int /*<<< orphan*/  line; } ;
struct TYPE_16__ {TYPE_3__* obj; int /*<<< orphan*/  level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*,size_t,struct ucl_macro*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_parser*,struct ucl_chunk*,unsigned char const*) ; 
 int /*<<< orphan*/  UCL_CHARACTER_WHITESPACE_UNSAFE ; 
 int /*<<< orphan*/  UCL_EINTERNAL ; 
 int /*<<< orphan*/  UCL_ESYNTAX ; 
 int /*<<< orphan*/  FUNC2 (size_t,unsigned char*) ; 
 int /*<<< orphan*/  UCL_OBJECT ; 
 int UCL_PARSER_DISABLE_MACRO ; 
#define  UCL_STATE_AFTER_VALUE 133 
 void* UCL_STATE_ERROR ; 
#define  UCL_STATE_INIT 132 
#define  UCL_STATE_KEY 131 
#define  UCL_STATE_MACRO 130 
#define  UCL_STATE_MACRO_NAME 129 
#define  UCL_STATE_VALUE 128 
 int /*<<< orphan*/  hh ; 
 int FUNC3 (unsigned char const*,size_t,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned char const*,size_t,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned char*,size_t,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned char*,size_t,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ucl_parser*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ucl_chunk*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 size_t FUNC10 (struct ucl_parser*,unsigned char**,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct ucl_parser*,struct ucl_chunk*) ; 
 int /*<<< orphan*/  FUNC13 (struct ucl_parser*,struct ucl_chunk*,int*,int*) ; 
 TYPE_3__* FUNC14 (struct ucl_parser*,struct ucl_chunk*) ; 
 int /*<<< orphan*/  FUNC15 (struct ucl_parser*,struct ucl_chunk*,struct ucl_macro*,unsigned char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC16 (struct ucl_parser*,struct ucl_chunk*) ; 
 TYPE_3__* FUNC17 (TYPE_3__*,struct ucl_parser*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ucl_parser*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct ucl_parser*) ; 
 int /*<<< orphan*/  FUNC20 (struct ucl_parser*,struct ucl_chunk*) ; 
 int /*<<< orphan*/  FUNC21 (unsigned char const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC22 (struct ucl_parser *parser)
{
	ucl_object_t *obj, *macro_args;
	struct ucl_chunk *chunk = parser->chunks;
	const unsigned char *p, *c = NULL, *macro_start = NULL;
	unsigned char *macro_escaped;
	size_t macro_len = 0;
	struct ucl_macro *macro = NULL;
	bool next_key = false, end_of_object = false, ret;

	if (parser->top_obj == NULL) {
		parser->state = UCL_STATE_INIT;
	}

	p = chunk->pos;
	while (chunk->pos < chunk->end) {
		switch (parser->state) {
		case UCL_STATE_INIT:
			/*
			 * At the init state we can either go to the parse array or object
			 * if we got [ or { correspondingly or can just treat new data as
			 * a key of newly created object
			 */
			if (!FUNC19 (parser)) {
				parser->prev_state = parser->state;
				parser->state = UCL_STATE_ERROR;
				return false;
			}
			else {
				/* Skip any spaces */
				while (p < chunk->end && FUNC21 (*p,
						UCL_CHARACTER_WHITESPACE_UNSAFE)) {
					FUNC8 (chunk, p);
				}

				p = chunk->pos;

				if (*p == '[') {
					parser->state = UCL_STATE_VALUE;
					FUNC8 (chunk, p);
				}
				else {
					parser->state = UCL_STATE_KEY;
					if (*p == '{') {
						FUNC8 (chunk, p);
					}
				}

				if (parser->top_obj == NULL) {
					if (parser->state == UCL_STATE_VALUE) {
						obj = FUNC17 (NULL, parser, true, 0);
					}
					else {
						obj = FUNC17 (NULL, parser, false, 0);
					}

					if (obj == NULL) {
						return false;
					}

					parser->top_obj = obj;
					parser->cur_obj = obj;
				}

			}
			break;
		case UCL_STATE_KEY:
			/* Skip any spaces */
			while (p < chunk->end && FUNC21 (*p, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
				FUNC8 (chunk, p);
			}
			if (p == chunk->end || *p == '}') {
				/* We have the end of an object */
				parser->state = UCL_STATE_AFTER_VALUE;
				continue;
			}
			if (parser->stack == NULL) {
				/* No objects are on stack, but we want to parse a key */
				FUNC18 (parser, UCL_ESYNTAX, "top object is finished but the parser "
						"expects a key", &parser->err);
				parser->prev_state = parser->state;
				parser->state = UCL_STATE_ERROR;
				return false;
			}
			if (!FUNC13 (parser, chunk, &next_key, &end_of_object)) {
				parser->prev_state = parser->state;
				parser->state = UCL_STATE_ERROR;
				return false;
			}
			if (end_of_object) {
				p = chunk->pos;
				parser->state = UCL_STATE_AFTER_VALUE;
				continue;
			}
			else if (parser->state != UCL_STATE_MACRO_NAME) {
				if (next_key && parser->stack->obj->type == UCL_OBJECT) {
					/* Parse more keys and nest objects accordingly */
					obj = FUNC17 (parser->cur_obj, parser, false,
							parser->stack->level + 1);
					if (obj == NULL) {
						return false;
					}
				}
				else {
					parser->state = UCL_STATE_VALUE;
				}
			}
			else {
				c = chunk->pos;
			}
			p = chunk->pos;
			break;
		case UCL_STATE_VALUE:
			/* We need to check what we do have */
			if (!parser->cur_obj || !FUNC16 (parser, chunk)) {
				parser->prev_state = parser->state;
				parser->state = UCL_STATE_ERROR;
				return false;
			}
			/* State is set in ucl_parse_value call */
			p = chunk->pos;
			break;
		case UCL_STATE_AFTER_VALUE:
			if (!FUNC12 (parser, chunk)) {
				parser->prev_state = parser->state;
				parser->state = UCL_STATE_ERROR;
				return false;
			}

			if (parser->stack != NULL) {
				if (parser->stack->obj->type == UCL_OBJECT) {
					parser->state = UCL_STATE_KEY;
				}
				else {
					/* Array */
					parser->state = UCL_STATE_VALUE;
				}
			}
			else {
				/* Skip everything at the end */
				return true;
			}

			p = chunk->pos;
			break;
		case UCL_STATE_MACRO_NAME:
			if (parser->flags & UCL_PARSER_DISABLE_MACRO) {
				if (!FUNC20 (parser, chunk)) {
					/* We have invalid macro */
					FUNC9 (&parser->err,
							"error on line %d at column %d: invalid macro",
							chunk->line,
							chunk->column);
					parser->state = UCL_STATE_ERROR;
					return false;
				}
				else {
					p = chunk->pos;
					parser->state = parser->prev_state;
				}
			}
			else {
				if (!FUNC21 (*p, UCL_CHARACTER_WHITESPACE_UNSAFE) &&
						*p != '(') {
					FUNC8 (chunk, p);
				}
				else {
					if (c != NULL && p - c > 0) {
						/* We got macro name */
						macro_len = (size_t) (p - c);
						FUNC0 (hh, parser->macroes, c, macro_len, macro);
						if (macro == NULL) {
							FUNC9 (&parser->err,
									"error on line %d at column %d: "
									"unknown macro: '%.*s', character: '%c'",
									chunk->line,
									chunk->column,
									(int) (p - c),
									c,
									*chunk->pos);
							parser->state = UCL_STATE_ERROR;
							return false;
						}
						/* Now we need to skip all spaces */
						FUNC1(parser, chunk, p);
						parser->state = UCL_STATE_MACRO;
					}
					else {
						/* We have invalid macro name */
						FUNC9 (&parser->err,
								"error on line %d at column %d: invalid macro name",
								chunk->line,
								chunk->column);
						parser->state = UCL_STATE_ERROR;
						return false;
					}
				}
			}
			break;
		case UCL_STATE_MACRO:
			if (*chunk->pos == '(') {
				macro_args = FUNC14 (parser, chunk);
				p = chunk->pos;
				if (macro_args) {
					FUNC1(parser, chunk, p);
				}
			}
			else {
				macro_args = NULL;
			}
			if (!FUNC15 (parser, chunk, macro,
					&macro_start, &macro_len)) {
				parser->prev_state = parser->state;
				parser->state = UCL_STATE_ERROR;
				return false;
			}
			macro_len = FUNC10 (parser, &macro_escaped,
					macro_start, macro_len);
			parser->state = parser->prev_state;

			if (macro_escaped == NULL && macro != NULL) {
				if (macro->is_context) {
					ret = macro->h.context_handler (macro_start, macro_len,
							macro_args,
							parser->top_obj,
							macro->ud);
				}
				else {
					ret = macro->h.handler (macro_start, macro_len, macro_args,
							macro->ud);
				}
			}
			else if (macro != NULL) {
				if (macro->is_context) {
					ret = macro->h.context_handler (macro_escaped, macro_len,
							macro_args,
							parser->top_obj,
							macro->ud);
				}
				else {
					ret = macro->h.handler (macro_escaped, macro_len, macro_args,
						macro->ud);
				}

				FUNC2 (macro_len + 1, macro_escaped);
			}
			else {
				ret = false;
				FUNC18 (parser, UCL_EINTERNAL,
						"internal error: parser has macro undefined", &parser->err);
			}

			/*
			 * Chunk can be modified within macro handler
			 */
			chunk = parser->chunks;
			p = chunk->pos;

			if (macro_args) {
				FUNC11 (macro_args);
			}

			if (!ret) {
				return false;
			}
			break;
		default:
			FUNC18 (parser, UCL_EINTERNAL,
					"internal error: parser is in an unknown state", &parser->err);
			parser->state = UCL_STATE_ERROR;
			return false;
		}
	}

	if (parser->last_comment) {
		if (parser->cur_obj) {
			FUNC7 (parser, parser->cur_obj, true);
		}
		else if (parser->stack && parser->stack->obj) {
			FUNC7 (parser, parser->stack->obj, true);
		}
		else if (parser->top_obj) {
			FUNC7 (parser, parser->top_obj, true);
		}
		else {
			FUNC11 (parser->last_comment);
		}
	}

	return true;
}