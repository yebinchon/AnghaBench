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
struct ucl_parser {int /*<<< orphan*/  err; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_CHARACTER_ESCAPE ; 
 int /*<<< orphan*/  UCL_CHARACTER_UCL_UNSAFE ; 
 int /*<<< orphan*/  UCL_ESYNTAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_chunk*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_parser*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (struct ucl_parser *parser,
		struct ucl_chunk *chunk, bool *need_unescape, bool *ucl_escape, bool *var_expand)
{
	const unsigned char *p = chunk->pos;
	unsigned char c;
	int i;

	while (p < chunk->end) {
		c = *p;
		if (c < 0x1F) {
			/* Unmasked control character */
			if (c == '\n') {
				FUNC2 (parser, UCL_ESYNTAX, "unexpected newline",
						&parser->err);
			}
			else {
				FUNC2 (parser, UCL_ESYNTAX, "unexpected control character",
						&parser->err);
			}
			return false;
		}
		else if (c == '\\') {
			FUNC1 (chunk, p);
			c = *p;
			if (p >= chunk->end) {
				FUNC2 (parser, UCL_ESYNTAX, "unfinished escape character",
						&parser->err);
				return false;
			}
			else if (FUNC3 (c, UCL_CHARACTER_ESCAPE)) {
				if (c == 'u') {
					FUNC1 (chunk, p);
					for (i = 0; i < 4 && p < chunk->end; i ++) {
						if (!FUNC0 (*p)) {
							FUNC2 (parser, UCL_ESYNTAX, "invalid utf escape",
									&parser->err);
							return false;
						}
						FUNC1 (chunk, p);
					}
					if (p >= chunk->end) {
						FUNC2 (parser, UCL_ESYNTAX, "unfinished escape character",
								&parser->err);
						return false;
					}
				}
				else {
					FUNC1 (chunk, p);
				}
			}
			*need_unescape = true;
			*ucl_escape = true;
			continue;
		}
		else if (c == '"') {
			FUNC1 (chunk, p);
			return true;
		}
		else if (FUNC3 (c, UCL_CHARACTER_UCL_UNSAFE)) {
			*ucl_escape = true;
		}
		else if (c == '$') {
			*var_expand = true;
		}
		FUNC1 (chunk, p);
	}

	FUNC2 (parser, UCL_ESYNTAX, "no quote at the end of json string",
			&parser->err);
	return false;
}