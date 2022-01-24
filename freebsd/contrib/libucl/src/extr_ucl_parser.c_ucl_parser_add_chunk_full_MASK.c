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
struct ucl_parser {scalar_t__ state; scalar_t__ recursion; int /*<<< orphan*/  err; int /*<<< orphan*/ * top_obj; int /*<<< orphan*/  chunks; } ;
struct ucl_chunk {unsigned char const* begin; size_t remain; unsigned char const* pos; unsigned char const* end; int line; unsigned int priority; int strategy; int parse_type; scalar_t__ column; } ;
typedef  enum ucl_parse_type { ____Placeholder_ucl_parse_type } ucl_parse_type ;
typedef  enum ucl_duplicate_strategy { ____Placeholder_ucl_duplicate_strategy } ucl_duplicate_strategy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ucl_chunk*) ; 
 struct ucl_chunk* FUNC1 (int) ; 
 scalar_t__ UCL_MAX_RECURSION ; 
 int /*<<< orphan*/  UCL_OBJECT ; 
 int UCL_PARSE_AUTO ; 
#define  UCL_PARSE_CSEXP 130 
#define  UCL_PARSE_MSGPACK 129 
#define  UCL_PARSE_UCL 128 
 scalar_t__ UCL_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct ucl_parser*) ; 
 int FUNC5 (struct ucl_parser*) ; 
 int FUNC6 (struct ucl_parser*) ; 

bool
FUNC7 (struct ucl_parser *parser, const unsigned char *data,
		size_t len, unsigned priority, enum ucl_duplicate_strategy strat,
		enum ucl_parse_type parse_type)
{
	struct ucl_chunk *chunk;

	if (parser == NULL) {
		return false;
	}

	if (data == NULL && len != 0) {
		FUNC2 (&parser->err, "invalid chunk added");
		return false;
	}

	if (parser->state != UCL_STATE_ERROR) {
		chunk = FUNC1 (sizeof (struct ucl_chunk));
		if (chunk == NULL) {
			FUNC2 (&parser->err, "cannot allocate chunk structure");
			return false;
		}

		if (parse_type == UCL_PARSE_AUTO && len > 0) {
			/* We need to detect parse type by the first symbol */
			if ((*data & 0x80) == 0x80 && (*data >= 0xdc && *data <= 0xdf)) {
				parse_type = UCL_PARSE_MSGPACK;
			}
			else if (*data == '(') {
				parse_type = UCL_PARSE_CSEXP;
			}
			else {
				parse_type = UCL_PARSE_UCL;
			}
		}

		chunk->begin = data;
		chunk->remain = len;
		chunk->pos = chunk->begin;
		chunk->end = chunk->begin + len;
		chunk->line = 1;
		chunk->column = 0;
		chunk->priority = priority;
		chunk->strategy = strat;
		chunk->parse_type = parse_type;
		FUNC0 (parser->chunks, chunk);
		parser->recursion ++;

		if (parser->recursion > UCL_MAX_RECURSION) {
			FUNC2 (&parser->err, "maximum include nesting limit is reached: %d",
					parser->recursion);
			return false;
		}

		if (len > 0) {
			/* Need to parse something */
			switch (parse_type) {
			default:
			case UCL_PARSE_UCL:
				return FUNC6 (parser);
			case UCL_PARSE_MSGPACK:
				return FUNC5 (parser);
			case UCL_PARSE_CSEXP:
				return FUNC4 (parser);
			}
		}
		else {
			/* Just add empty chunk and go forward */
			if (parser->top_obj == NULL) {
				/*
				 * In case of empty object, create one to indicate that we've
				 * read something
				 */
				parser->top_obj = FUNC3 (UCL_OBJECT, priority);
			}

			return true;
		}
	}

	FUNC2 (&parser->err, "a parser is in an invalid state");

	return false;
}