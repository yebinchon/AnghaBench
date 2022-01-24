#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiv64 ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {float dv; int /*<<< orphan*/  iv; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef  TYPE_3__ ucl_object_t ;
struct ucl_stack {int dummy; } ;
struct ucl_parser {TYPE_3__* cur_obj; TYPE_1__* chunks; } ;
typedef  int ssize_t ;
typedef  enum ucl_msgpack_format { ____Placeholder_ucl_msgpack_format } ucl_msgpack_format ;
struct TYPE_5__ {int /*<<< orphan*/  priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UCL_FLOAT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
#define  msgpack_float32 129 
#define  msgpack_float64 128 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC5 (struct ucl_parser *parser,
		struct ucl_stack *container, size_t len, enum ucl_msgpack_format fmt,
		const unsigned char *pos, size_t remain)
{
	ucl_object_t *obj;
	union {
		uint32_t i;
		float f;
	} d;
	uint64_t uiv64;

	if (len > remain) {
		return -1;
	}

	obj = FUNC4 (UCL_FLOAT, parser->chunks->priority);

	switch (fmt) {
	case msgpack_float32:
		FUNC3(&d.i, pos, sizeof(d.i));
		d.i = FUNC0(d.i);
		/* XXX: can be slow */
		obj->value.dv = d.f;
		len = 4;
		break;
	case msgpack_float64:
		FUNC3(&uiv64, pos, sizeof(uiv64));
		uiv64 = FUNC1(uiv64);
		obj->value.iv = uiv64;
		len = 8;
		break;
	default:
		FUNC2 (0);
		break;
	}

	parser->cur_obj = obj;

	return len;
}