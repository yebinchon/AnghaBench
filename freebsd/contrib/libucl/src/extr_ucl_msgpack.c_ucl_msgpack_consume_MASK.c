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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ucl_stack {int level; } ;
struct ucl_parser {struct ucl_stack* stack; int /*<<< orphan*/  err; void* cur_obj; TYPE_1__* chunks; } ;
struct ucl_msgpack_parser {int flags; int len; unsigned char const prefix; int (* func ) (struct ucl_parser*,struct ucl_stack*,int,int /*<<< orphan*/ ,unsigned char const*,int) ;int /*<<< orphan*/  fmt; } ;
typedef  int ssize_t ;
typedef  enum e_msgpack_parser_state { ____Placeholder_e_msgpack_parser_state } e_msgpack_parser_state ;
struct TYPE_2__ {unsigned char* begin; int remain; int /*<<< orphan*/  priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONSUME_RET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  GET_NEXT_STATE ; 
 int MSGPACK_CONTAINER_BIT ; 
 int MSGPACK_FLAG_ASSOC ; 
 int MSGPACK_FLAG_CONTAINER ; 
 int MSGPACK_FLAG_FIXED ; 
 int MSGPACK_FLAG_KEY ; 
 int MSGPACK_FLAG_TYPEVALUE ; 
 int /*<<< orphan*/  UCL_ARRAY ; 
 int /*<<< orphan*/  UCL_OBJECT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ucl_parser*,struct ucl_stack*,int,int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int FUNC5 (struct ucl_parser*,struct ucl_stack*,int,int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int FUNC6 (struct ucl_parser*,struct ucl_stack*,int,int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int FUNC7 (struct ucl_parser*,struct ucl_stack*,int,int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int FUNC8 (struct ucl_parser*,struct ucl_stack*,int,int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int FUNC9 (struct ucl_parser*,struct ucl_stack*,int,int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 struct ucl_stack* FUNC11 (struct ucl_parser*,struct ucl_msgpack_parser*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ucl_parser*) ; 
 struct ucl_msgpack_parser* FUNC13 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC14 (struct ucl_parser*,unsigned char const*,int,void*) ; 
 int /*<<< orphan*/  FUNC15 (struct ucl_stack*) ; 
 void* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC17 (struct ucl_parser *parser)
{
	const unsigned char *p, *end, *key = NULL;
	struct ucl_stack *container;
	enum e_msgpack_parser_state {
		read_type,
		start_assoc,
		start_array,
		read_assoc_key,
		read_assoc_value,
		finish_assoc_value,
		read_array_value,
		finish_array_value,
		error_state
	} state = read_type, next_state = error_state;
	struct ucl_msgpack_parser *obj_parser = NULL;
	uint64_t len = 0;
	ssize_t ret, remain, keylen = 0;
#ifdef MSGPACK_DEBUG_PARSER
	uint64_t i;
	enum e_msgpack_parser_state hist[256];
#endif

	p = parser->chunks->begin;
	remain = parser->chunks->remain;
	end = p + remain;


	while (p < end) {
#ifdef MSGPACK_DEBUG_PARSER
		hist[i++ % 256] = state;
#endif
		switch (state) {
		case read_type:
			obj_parser = FUNC13 (*p);

			if (obj_parser == NULL) {
				FUNC10 (&parser->err, "unknown msgpack format: %x",
						(unsigned int)*p);

				return false;
			}
			/* Now check length sanity */
			if (obj_parser->flags & MSGPACK_FLAG_FIXED) {
				if (obj_parser->len == 0) {
					/* We have an embedded size */
					len = *p & ~obj_parser->prefix;
				}
				else {
					if (remain < obj_parser->len) {
						FUNC10 (&parser->err, "not enough data remain to "
								"read object's length: %u remain, %u needed",
								(unsigned)remain, obj_parser->len);

						return false;
					}

					len = obj_parser->len;
				}

				if (!(obj_parser->flags & MSGPACK_FLAG_TYPEVALUE)) {
					/* We must pass value as the second byte */
					if (remain > 0) {
						p ++;
						remain --;
					}
				}
				else {
					/* Len is irrelevant now */
					len = 0;
				}
			}
			else {
				/* Length is not embedded */
				if (remain < obj_parser->len) {
					FUNC10 (&parser->err, "not enough data remain to "
							"read object's length: %u remain, %u needed",
							(unsigned)remain, obj_parser->len);

					return false;
				}

				p ++;
				remain --;

				switch (obj_parser->len) {
				case 1:
					len = *p;
					break;
				case 2:
					len = FUNC0 (*(uint16_t *)p);
					break;
				case 4:
					len = FUNC1 (*(uint32_t *)p);
					break;
				case 8:
					len = FUNC2 (*(uint64_t *)p);
					break;
				default:
					FUNC3 (0);
					break;
				}

				p += obj_parser->len;
				remain -= obj_parser->len;
			}

			if (obj_parser->flags & MSGPACK_FLAG_ASSOC) {
				/* We have just read the new associative map */
				state = start_assoc;
			}
			else if (obj_parser->flags & MSGPACK_FLAG_CONTAINER){
				state = start_array;
			}
			else {
				state = next_state;
			}

			break;
		case start_assoc:
			parser->cur_obj = FUNC16 (UCL_OBJECT,
					parser->chunks->priority);
			/* Insert to the previous level container */
			if (parser->stack && !FUNC14 (parser,
					key, keylen, parser->cur_obj)) {
				return false;
			}
			/* Get new container */
			container = FUNC11 (parser, obj_parser, len);

			if (container == NULL) {
				return false;
			}

			ret = obj_parser->func (parser, container, len, obj_parser->fmt,
					p, remain);
			CONSUME_RET;
			key = NULL;
			keylen = 0;

			if (len > 0) {
				state = read_type;
				next_state = read_assoc_key;
			}
			else {
				/* Empty object */
				state = finish_assoc_value;
			}
			break;

		case start_array:
			parser->cur_obj = FUNC16 (UCL_ARRAY,
					parser->chunks->priority);
			/* Insert to the previous level container */
			if (parser->stack && !FUNC14 (parser,
					key, keylen, parser->cur_obj)) {
				return false;
			}
			/* Get new container */
			container = FUNC11 (parser, obj_parser, len);

			if (container == NULL) {
				return false;
			}

			ret = obj_parser->func (parser, container, len, obj_parser->fmt,
								p, remain);
			CONSUME_RET;

			if (len > 0) {
				state = read_type;
				next_state = read_array_value;
			}
			else {
				/* Empty array */
				state = finish_array_value;
			}
			break;

		case read_array_value:
			/*
			 * p is now at the value start, len now contains length read and
			 * obj_parser contains the corresponding specific parser
			 */
			container = parser->stack;

			if (container == NULL) {
				return false;
			}

			ret = obj_parser->func (parser, container, len, obj_parser->fmt,
					p, remain);
			CONSUME_RET;


			/* Insert value to the container and check if we have finished array */
			if (!FUNC14 (parser, NULL, 0,
					parser->cur_obj)) {
				return false;
			}

			if (FUNC15 (container)) {
				state = finish_array_value;
			}
			else {
				/* Read more elements */
				state = read_type;
				next_state = read_array_value;
			}

			break;

		case read_assoc_key:
			/*
			 * Keys must have string type for ucl msgpack
			 */
			if (!(obj_parser->flags & MSGPACK_FLAG_KEY)) {
				FUNC10 (&parser->err, "bad type for key: %u, expected "
						"string", (unsigned)obj_parser->fmt);

				return false;
			}

			key = p;
			keylen = len;

			if (keylen > remain || keylen == 0) {
				FUNC10 (&parser->err, "too long or empty key");
				return false;
			}

			p += len;
			remain -= len;

			state = read_type;
			next_state = read_assoc_value;
			break;

		case read_assoc_value:
			/*
			 * p is now at the value start, len now contains length read and
			 * obj_parser contains the corresponding specific parser
			 */
			container = parser->stack;

			if (container == NULL) {
				return false;
			}

			ret = obj_parser->func (parser, container, len, obj_parser->fmt,
					p, remain);
			CONSUME_RET;

			FUNC3 (key != NULL && keylen > 0);

			if (!FUNC14 (parser, key, keylen,
					parser->cur_obj)) {
				return false;
			}

			key = NULL;
			keylen = 0;

			if (FUNC15 (container)) {
				state = finish_assoc_value;
			}
			else {
				/* Read more elements */
				state = read_type;
				next_state = read_assoc_key;
			}
			break;

		case finish_array_value:
		case finish_assoc_value:
			GET_NEXT_STATE;
			state = read_type;
			break;

		case error_state:
			FUNC10 (&parser->err, "invalid state machine state");

			return false;
		}
	}

	/* Check the finishing state */
	switch (state) {
	case start_array:
	case start_assoc:
		/* Empty container at the end */
		if (len != 0) {
			FUNC10 (&parser->err, "invalid non-empty container at the end");

			return false;
		}

		parser->cur_obj = FUNC16 (
				state == start_array ? UCL_ARRAY : UCL_OBJECT,
				parser->chunks->priority);
		/* Insert to the previous level container */
		if (!FUNC14 (parser,
				key, keylen, parser->cur_obj)) {
			return false;
		}
		/* Get new container */
		container = FUNC11 (parser, obj_parser, len);

		if (container == NULL) {
			return false;
		}

		ret = obj_parser->func (parser, container, len, obj_parser->fmt,
				p, remain);
		break;

	case read_array_value:
	case read_assoc_value:
		if (len != 0) {
			FUNC10 (&parser->err, "unfinished value at the end");

			return false;
		}

		container = parser->stack;

		if (container == NULL) {
			return false;
		}

		ret = obj_parser->func (parser, container, len, obj_parser->fmt,
				p, remain);
		CONSUME_RET;


		/* Insert value to the container and check if we have finished array */
		if (!FUNC14 (parser, NULL, 0,
				parser->cur_obj)) {
			return false;
		}
		break;
	case finish_array_value:
	case finish_assoc_value:
	case read_type:
		/* Valid finishing state */
		break;
	default:
		/* Invalid finishing state */
		FUNC10 (&parser->err, "invalid state machine finishing state: %d",
				state);

		return false;
	}

	/* Rewind to the top level container */
	FUNC12 (parser);
	FUNC3 (parser->stack == NULL ||
			(parser->stack->level & MSGPACK_CONTAINER_BIT) == 0);

	return true;
}