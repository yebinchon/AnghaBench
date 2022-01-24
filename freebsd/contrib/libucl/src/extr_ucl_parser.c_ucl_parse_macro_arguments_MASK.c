#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ucl_object_t ;
struct ucl_parser_saved_state {unsigned char* pos; int remain; int /*<<< orphan*/  line; int /*<<< orphan*/  column; } ;
struct ucl_parser {int /*<<< orphan*/  err; int /*<<< orphan*/  flags; } ;
struct ucl_chunk {unsigned char* pos; int remain; unsigned char const* end; int /*<<< orphan*/  line; int /*<<< orphan*/  column; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_ESYNTAX ; 
 int /*<<< orphan*/  FUNC0 (struct ucl_chunk*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_parser*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_parser*) ; 
 int /*<<< orphan*/ * FUNC3 (struct ucl_parser*) ; 
 struct ucl_parser* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ucl_parser*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ucl_object_t *
FUNC6 (struct ucl_parser *parser,
		struct ucl_chunk *chunk)
{
	ucl_object_t *res = NULL;
	struct ucl_parser *params_parser;
	int obraces = 1, ebraces = 0, state = 0;
	const unsigned char *p, *c;
	size_t args_len = 0;
	struct ucl_parser_saved_state saved;

	saved.column = chunk->column;
	saved.line = chunk->line;
	saved.pos = chunk->pos;
	saved.remain = chunk->remain;
	p = chunk->pos;

	if (*p != '(' || chunk->remain < 2) {
		return NULL;
	}

	/* Set begin and start */
	FUNC0 (chunk, p);
	c = p;

	while ((p) < (chunk)->end) {
		switch (state) {
		case 0:
			/* Parse symbols and check for '(', ')' and '"' */
			if (*p == '(') {
				obraces ++;
			}
			else if (*p == ')') {
				ebraces ++;
			}
			else if (*p == '"') {
				state = 1;
			}
			/* Check pairing */
			if (obraces == ebraces) {
				state = 99;
			}
			else {
				args_len ++;
			}
			/* Check overflow */
			if (chunk->remain == 0) {
				goto restore_chunk;
			}
			FUNC0 (chunk, p);
			break;
		case 1:
			/* We have quote character, so skip all but quotes */
			if (*p == '"' && *(p - 1) != '\\') {
				state = 0;
			}
			if (chunk->remain == 0) {
				goto restore_chunk;
			}
			args_len ++;
			FUNC0 (chunk, p);
			break;
		case 99:
			/*
			 * We have read the full body of arguments, so we need to parse and set
			 * object from that
			 */
			params_parser = FUNC4 (parser->flags);
			if (!FUNC1 (params_parser, c, args_len)) {
				FUNC5 (parser, UCL_ESYNTAX, "macro arguments parsing error",
						&parser->err);
			}
			else {
				res = FUNC3 (params_parser);
			}
			FUNC2 (params_parser);

			return res;

			break;
		}
	}

	return res;

restore_chunk:
	chunk->column = saved.column;
	chunk->line = saved.line;
	chunk->pos = saved.pos;
	chunk->remain = saved.remain;

	return NULL;
}