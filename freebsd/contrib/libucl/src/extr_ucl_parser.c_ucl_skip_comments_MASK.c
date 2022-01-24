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
struct ucl_parser {scalar_t__ state; int flags; int /*<<< orphan*/  err; struct ucl_chunk* chunks; } ;
struct ucl_chunk {unsigned char* pos; int remain; unsigned char const* end; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_ENESTED ; 
 int UCL_PARSER_SAVE_COMMENTS ; 
 scalar_t__ UCL_STATE_MCOMMENT ; 
 scalar_t__ UCL_STATE_SCOMMENT ; 
 int /*<<< orphan*/  FUNC0 (struct ucl_chunk*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_parser*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_parser*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3 (struct ucl_parser *parser)
{
	struct ucl_chunk *chunk = parser->chunks;
	const unsigned char *p, *beg = NULL;
	int comments_nested = 0;
	bool quoted = false;

	p = chunk->pos;

start:
	if (chunk->remain > 0 && *p == '#') {
		if (parser->state != UCL_STATE_SCOMMENT &&
				parser->state != UCL_STATE_MCOMMENT) {
			beg = p;

			while (p < chunk->end) {
				if (*p == '\n') {
					if (parser->flags & UCL_PARSER_SAVE_COMMENTS) {
						FUNC1 (parser, beg, p - beg);
						beg = NULL;
					}

					FUNC0 (chunk, p);

					goto start;
				}
				FUNC0 (chunk, p);
			}
		}
	}
	else if (chunk->remain >= 2 && *p == '/') {
		if (p[1] == '*') {
			beg = p;
			FUNC0 (chunk, p);
			comments_nested ++;
			FUNC0 (chunk, p);

			while (p < chunk->end) {
				if (*p == '"' && *(p - 1) != '\\') {
					quoted = !quoted;
				}

				if (!quoted) {
					if (*p == '*') {
						FUNC0 (chunk, p);
						if (*p == '/') {
							comments_nested --;
							if (comments_nested == 0) {
								if (parser->flags & UCL_PARSER_SAVE_COMMENTS) {
									FUNC1 (parser, beg, p - beg + 1);
									beg = NULL;
								}

								FUNC0 (chunk, p);
								goto start;
							}
						}
						FUNC0 (chunk, p);
					}
					else if (p[0] == '/' && chunk->remain >= 2 && p[1] == '*') {
						comments_nested ++;
						FUNC0 (chunk, p);
						FUNC0 (chunk, p);
						continue;
					}
				}

				FUNC0 (chunk, p);
			}
			if (comments_nested != 0) {
				FUNC2 (parser, UCL_ENESTED,
						"unfinished multiline comment", &parser->err);
				return false;
			}
		}
	}

	if (beg && p > beg && (parser->flags & UCL_PARSER_SAVE_COMMENTS)) {
		FUNC1 (parser, beg, p - beg);
	}

	return true;
}