#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_7__ {unsigned char const* key; size_t keylen; } ;
typedef  TYPE_1__ ucl_object_t ;
struct ucl_stack {int level; TYPE_5__* obj; } ;
struct ucl_parser {int flags; int /*<<< orphan*/  err; struct ucl_stack* stack; } ;
struct TYPE_8__ {scalar_t__ type; } ;

/* Variables and functions */
 int MSGPACK_CONTAINER_BIT ; 
 scalar_t__ UCL_ARRAY ; 
 scalar_t__ UCL_OBJECT ; 
 int UCL_PARSER_ZEROCOPY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucl_parser*,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC5 (struct ucl_parser *parser,
		const unsigned char *key,
		size_t keylen, ucl_object_t *obj)
{
	uint64_t level;
	struct ucl_stack *container;

	container = parser->stack;
	FUNC0 (container != NULL);
	FUNC0 (container->level > 0);
	FUNC0 (obj != NULL);
	FUNC0 (container->obj != NULL);

	if (container->obj->type == UCL_ARRAY) {
		FUNC1 (container->obj, obj);
	}
	else if (container->obj->type == UCL_OBJECT) {
		if (key == NULL || keylen == 0) {
			FUNC3 (&parser->err, "cannot insert object with no key");
			return false;
		}

		obj->key = key;
		obj->keylen = keylen;

		if (!(parser->flags & UCL_PARSER_ZEROCOPY)) {
			FUNC2 (obj);
		}

		FUNC4 (parser, obj);
	}
	else {
		FUNC3 (&parser->err, "bad container type");
		return false;
	}

	if (container->level & MSGPACK_CONTAINER_BIT) {
		level = container->level & ~MSGPACK_CONTAINER_BIT;
		container->level = (level - 1) | MSGPACK_CONTAINER_BIT;
	}

	return true;
}