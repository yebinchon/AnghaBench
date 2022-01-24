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
struct ucl_parser {int dummy; } ;
struct ucl_macro {int dummy; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_CHARACTER_WHITESPACE_UNSAFE ; 
 int /*<<< orphan*/  FUNC0 (struct ucl_chunk*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_parser*,struct ucl_chunk*,int*,int*,int*) ; 
 scalar_t__ FUNC3 (unsigned char const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (struct ucl_parser *parser,
		struct ucl_chunk *chunk, struct ucl_macro *macro,
		unsigned char const **macro_start, size_t *macro_len)
{
	const unsigned char *p, *c;
	bool need_unescape = false, ucl_escape = false, var_expand = false;

	p = chunk->pos;

	switch (*p) {
	case '"':
		/* We have macro value encoded in quotes */
		c = p;
		FUNC0 (chunk, p);
		if (!FUNC2 (parser, chunk, &need_unescape, &ucl_escape, &var_expand)) {
			return false;
		}

		*macro_start = c + 1;
		*macro_len = chunk->pos - c - 2;
		p = chunk->pos;
		break;
	case '{':
		/* We got a multiline macro body */
		FUNC0 (chunk, p);
		/* Skip spaces at the beginning */
		while (p < chunk->end) {
			if (FUNC3 (*p, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
				FUNC0 (chunk, p);
			}
			else {
				break;
			}
		}
		c = p;
		while (p < chunk->end) {
			if (*p == '}') {
				break;
			}
			FUNC0 (chunk, p);
		}
		*macro_start = c;
		*macro_len = p - c;
		FUNC0 (chunk, p);
		break;
	default:
		/* Macro is not enclosed in quotes or braces */
		c = p;
		while (p < chunk->end) {
			if (FUNC1 (*p)) {
				break;
			}
			FUNC0 (chunk, p);
		}
		*macro_start = c;
		*macro_len = p - c;
		break;
	}

	/* We are at the end of a macro */
	/* Skip ';' and space characters and return to previous state */
	while (p < chunk->end) {
		if (!FUNC3 (*p, UCL_CHARACTER_WHITESPACE_UNSAFE) && *p != ';') {
			break;
		}
		FUNC0 (chunk, p);
	}
	return true;
}