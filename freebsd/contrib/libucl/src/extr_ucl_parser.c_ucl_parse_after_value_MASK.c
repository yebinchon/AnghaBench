#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ucl_stack {scalar_t__ level; TYPE_1__* obj; struct ucl_stack* next; } ;
struct ucl_parser {int /*<<< orphan*/  err; struct ucl_stack* stack; TYPE_1__* cur_obj; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; int remain; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ UCL_ARRAY ; 
 int /*<<< orphan*/  UCL_CHARACTER_VALUE_END ; 
 int /*<<< orphan*/  UCL_CHARACTER_WHITESPACE ; 
 int /*<<< orphan*/  UCL_ESYNTAX ; 
 int /*<<< orphan*/  FUNC0 (int,struct ucl_stack*) ; 
 scalar_t__ UCL_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_parser*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_chunk*,unsigned char const*) ; 
 scalar_t__ FUNC3 (unsigned char const,unsigned char const) ; 
 int /*<<< orphan*/  FUNC4 (struct ucl_parser*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ucl_parser*) ; 
 scalar_t__ FUNC6 (unsigned char const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (struct ucl_parser *parser, struct ucl_chunk *chunk)
{
	const unsigned char *p;
	bool got_sep = false;
	struct ucl_stack *st;

	p = chunk->pos;

	while (p < chunk->end) {
		if (FUNC6 (*p, UCL_CHARACTER_WHITESPACE)) {
			/* Skip whitespaces */
			FUNC2 (chunk, p);
		}
		else if (chunk->remain >= 2 && FUNC3 (p[0], p[1])) {
			/* Skip comment */
			if (!FUNC5 (parser)) {
				return false;
			}
			/* Treat comment as a separator */
			got_sep = true;
			p = chunk->pos;
		}
		else if (FUNC6 (*p, UCL_CHARACTER_VALUE_END)) {
			if (*p == '}' || *p == ']') {
				if (parser->stack == NULL) {
					FUNC4 (parser, UCL_ESYNTAX,
							"end of array or object detected without corresponding start",
							&parser->err);
					return false;
				}
				if ((*p == '}' && parser->stack->obj->type == UCL_OBJECT) ||
						(*p == ']' && parser->stack->obj->type == UCL_ARRAY)) {

					/* Pop all nested objects from a stack */
					st = parser->stack;
					parser->stack = st->next;
					FUNC0 (sizeof (struct ucl_stack), st);

					if (parser->cur_obj) {
						FUNC1 (parser, parser->cur_obj, true);
					}

					while (parser->stack != NULL) {
						st = parser->stack;

						if (st->next == NULL || st->next->level == st->level) {
							break;
						}

						parser->stack = st->next;
						parser->cur_obj = st->obj;
						FUNC0 (sizeof (struct ucl_stack), st);
					}
				}
				else {
					FUNC4 (parser, UCL_ESYNTAX,
							"unexpected terminating symbol detected",
							&parser->err);
					return false;
				}

				if (parser->stack == NULL) {
					/* Ignore everything after a top object */
					return true;
				}
				else {
					FUNC2 (chunk, p);
				}
				got_sep = true;
			}
			else {
				/* Got a separator */
				got_sep = true;
				FUNC2 (chunk, p);
			}
		}
		else {
			/* Anything else */
			if (!got_sep) {
				FUNC4 (parser, UCL_ESYNTAX, "delimiter is missing",
						&parser->err);
				return false;
			}
			return true;
		}
	}

	return true;
}