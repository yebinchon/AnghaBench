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
typedef  int /*<<< orphan*/  uiv32 ;
typedef  int /*<<< orphan*/  uiv16 ;
typedef  void* uint64_t ;
typedef  void* uint32_t ;
typedef  void* uint16_t ;
struct TYPE_6__ {unsigned char iv; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef  TYPE_3__ ucl_object_t ;
struct ucl_stack {int dummy; } ;
struct ucl_parser {TYPE_3__* cur_obj; TYPE_1__* chunks; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  iv8 ;
typedef  int /*<<< orphan*/  iv64 ;
typedef  int /*<<< orphan*/  iv32 ;
typedef  int /*<<< orphan*/  iv16 ;
typedef  void* int8_t ;
typedef  void* int64_t ;
typedef  void* int32_t ;
typedef  void* int16_t ;
typedef  enum ucl_msgpack_format { ____Placeholder_ucl_msgpack_format } ucl_msgpack_format ;
struct TYPE_5__ {int /*<<< orphan*/  priority; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  UCL_INT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,unsigned char const*,int) ; 
#define  msgpack_int16 137 
#define  msgpack_int32 136 
#define  msgpack_int64 135 
#define  msgpack_int8 134 
#define  msgpack_negative_fixint 133 
#define  msgpack_positive_fixint 132 
#define  msgpack_uint16 131 
#define  msgpack_uint32 130 
#define  msgpack_uint64 129 
#define  msgpack_uint8 128 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC6 (struct ucl_parser *parser,
		struct ucl_stack *container, size_t len, enum ucl_msgpack_format fmt,
		const unsigned char *pos, size_t remain)
{
	ucl_object_t *obj;
	int8_t iv8;
	int16_t iv16;
	int32_t iv32;
	int64_t iv64;
	uint16_t uiv16;
	uint32_t uiv32;
	uint64_t uiv64;


	if (len > remain) {
		return -1;
	}

	obj = FUNC5 (UCL_INT, parser->chunks->priority);

	switch (fmt) {
	case msgpack_positive_fixint:
		obj->value.iv = (*pos & 0x7f);
		len = 1;
		break;
	case msgpack_negative_fixint:
		obj->value.iv = - (*pos & 0x1f);
		len = 1;
		break;
	case msgpack_uint8:
		obj->value.iv = (unsigned char)*pos;
		len = 1;
		break;
	case msgpack_int8:
		FUNC4 (&iv8, pos, sizeof (iv8));
		obj->value.iv = iv8;
		len = 1;
		break;
	case msgpack_int16:
		FUNC4 (&iv16, pos, sizeof (iv16));
		iv16 = FUNC0 (iv16);
		obj->value.iv = iv16;
		len = 2;
		break;
	case msgpack_uint16:
		FUNC4 (&uiv16, pos, sizeof (uiv16));
		uiv16 = FUNC0 (uiv16);
		obj->value.iv = uiv16;
		len = 2;
		break;
	case msgpack_int32:
		FUNC4 (&iv32, pos, sizeof (iv32));
		iv32 = FUNC1 (iv32);
		obj->value.iv = iv32;
		len = 4;
		break;
	case msgpack_uint32:
		FUNC4(&uiv32, pos, sizeof(uiv32));
		uiv32 = FUNC1(uiv32);
		obj->value.iv = uiv32;
		len = 4;
		break;
	case msgpack_int64:
		FUNC4 (&iv64, pos, sizeof (iv64));
		iv64 = FUNC2 (iv64);
		obj->value.iv = iv64;
		len = 8;
		break;
	case msgpack_uint64:
		FUNC4(&uiv64, pos, sizeof(uiv64));
		uiv64 = FUNC2(uiv64);
		obj->value.iv = uiv64;
		len = 8;
		break;
	default:
		FUNC3 (0);
		break;
	}

	parser->cur_obj = obj;

	return len;
}