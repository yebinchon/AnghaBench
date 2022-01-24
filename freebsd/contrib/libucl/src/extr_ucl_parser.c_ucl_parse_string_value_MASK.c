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
struct ucl_chunk {unsigned char* pos; unsigned char const* end; int remain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucl_chunk*,unsigned char const*) ; 
 scalar_t__ FUNC1 (unsigned char const) ; 
 scalar_t__ FUNC2 (unsigned char const,unsigned char const) ; 

__attribute__((used)) static bool
FUNC3 (struct ucl_parser *parser,
		struct ucl_chunk *chunk, bool *var_expand, bool *need_unescape)
{
	const unsigned char *p;
	enum {
		UCL_BRACE_ROUND = 0,
		UCL_BRACE_SQUARE,
		UCL_BRACE_FIGURE
	};
	int braces[3][2] = {{0, 0}, {0, 0}, {0, 0}};

	p = chunk->pos;

	while (p < chunk->end) {

		/* Skip pairs of figure braces */
		if (*p == '{') {
			braces[UCL_BRACE_FIGURE][0] ++;
		}
		else if (*p == '}') {
			braces[UCL_BRACE_FIGURE][1] ++;
			if (braces[UCL_BRACE_FIGURE][1] <= braces[UCL_BRACE_FIGURE][0]) {
				/* This is not a termination symbol, continue */
				FUNC0 (chunk, p);
				continue;
			}
		}
		/* Skip pairs of square braces */
		else if (*p == '[') {
			braces[UCL_BRACE_SQUARE][0] ++;
		}
		else if (*p == ']') {
			braces[UCL_BRACE_SQUARE][1] ++;
			if (braces[UCL_BRACE_SQUARE][1] <= braces[UCL_BRACE_SQUARE][0]) {
				/* This is not a termination symbol, continue */
				FUNC0 (chunk, p);
				continue;
			}
		}
		else if (*p == '$') {
			*var_expand = true;
		}
		else if (*p == '\\') {
			*need_unescape = true;
			FUNC0 (chunk, p);
			if (p < chunk->end) {
				FUNC0 (chunk, p);
			}
			continue;
		}

		if (FUNC1 (*p) || (chunk->remain >= 2 && FUNC2 (p[0], p[1]))) {
			break;
		}
		FUNC0 (chunk, p);
	}

	return true;
}