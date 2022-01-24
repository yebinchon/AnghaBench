#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int flags; int /*<<< orphan*/  keylen; int /*<<< orphan*/  key; } ;
typedef  TYPE_3__ ucl_object_t ;
typedef  int /*<<< orphan*/  ucl_hash_t ;
struct ucl_parser {int flags; TYPE_2__* stack; } ;
struct TYPE_14__ {TYPE_1__* obj; } ;
struct TYPE_13__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  UCL_ARRAY ; 
 int UCL_OBJECT_MULTIVALUE ; 
 int UCL_PARSER_NO_IMPLICIT_ARRAYS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct ucl_parser *parser, ucl_hash_t *cont,
		ucl_object_t *top,
		ucl_object_t *elt)
{
	ucl_object_t *nobj;

	if ((parser->flags & UCL_PARSER_NO_IMPLICIT_ARRAYS) == 0) {
		/* Implicit array */
		top->flags |= UCL_OBJECT_MULTIVALUE;
		FUNC0 (top, elt);
		parser->stack->obj->len ++;
	}
	else {
		if ((top->flags & UCL_OBJECT_MULTIVALUE) != 0) {
			/* Just add to the explicit array */
			FUNC1 (top, elt);
		}
		else {
			/* Convert to an array */
			nobj = FUNC3 (UCL_ARRAY);
			nobj->key = top->key;
			nobj->keylen = top->keylen;
			nobj->flags |= UCL_OBJECT_MULTIVALUE;
			FUNC1 (nobj, top);
			FUNC1 (nobj, elt);
			FUNC2 (cont, top, nobj);
		}
	}
}