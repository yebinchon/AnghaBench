#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ucl_object_t ;
struct ucl_parser {int /*<<< orphan*/ * cur_obj; int /*<<< orphan*/ * top_obj; int /*<<< orphan*/  err; TYPE_2__* stack; TYPE_1__* chunks; } ;
struct TYPE_4__ {int /*<<< orphan*/ * obj; } ;
struct TYPE_3__ {unsigned char* begin; scalar_t__ remain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct ucl_parser*) ; 

bool
FUNC3 (struct ucl_parser *parser)
{
	ucl_object_t *container = NULL;
	const unsigned char *p;
	bool ret;

	FUNC0 (parser != NULL);
	FUNC0 (parser->chunks != NULL);
	FUNC0 (parser->chunks->begin != NULL);
	FUNC0 (parser->chunks->remain != 0);

	p = parser->chunks->begin;

	if (parser->stack) {
		container = parser->stack->obj;
	}

	/*
	 * When we start parsing message pack chunk, we must ensure that we
	 * have either a valid container or the top object inside message pack is
	 * of container type
	 */
	if (container == NULL) {
		if ((*p & 0x80) != 0x80 && !(*p >= 0xdc && *p <= 0xdf)) {
			FUNC1 (&parser->err, "bad top level object for msgpack");
			return false;
		}
	}

	ret = FUNC2 (parser);

	if (ret && parser->top_obj == NULL) {
		parser->top_obj = parser->cur_obj;
	}

	return ret;
}