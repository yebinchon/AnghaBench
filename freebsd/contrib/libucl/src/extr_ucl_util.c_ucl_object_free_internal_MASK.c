#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * ov; int /*<<< orphan*/ * av; } ;
struct TYPE_14__ {scalar_t__ type; struct TYPE_14__* next; TYPE_1__ value; } ;
typedef  TYPE_2__ ucl_object_t ;
typedef  int /*<<< orphan*/  (* ucl_object_dtor ) (TYPE_2__*) ;
typedef  int /*<<< orphan*/  ucl_hash_free_func ;
struct TYPE_15__ {unsigned int n; } ;

/* Variables and functions */
 scalar_t__ UCL_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_4__*) ; 
 scalar_t__ UCL_OBJECT ; 
 TYPE_2__* FUNC2 (TYPE_4__,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* vec ; 

__attribute__((used)) static void
FUNC5 (ucl_object_t *obj, bool allow_rec, ucl_object_dtor dtor)
{
	ucl_object_t *tmp, *sub;

	while (obj != NULL) {
		if (obj->type == UCL_ARRAY) {
			FUNC0 (vec, obj);
			unsigned int i;

			if (vec != NULL) {
				for (i = 0; i < vec->n; i ++) {
					sub = FUNC2 (*vec, i);
					if (sub != NULL) {
						tmp = sub;
						while (sub) {
							tmp = sub->next;
							dtor (sub);
							sub = tmp;
						}
					}
				}
				FUNC3 (*vec);
				FUNC1 (sizeof (*vec), vec);
			}
			obj->value.av = NULL;
		}
		else if (obj->type == UCL_OBJECT) {
			if (obj->value.ov != NULL) {
				FUNC4 (obj->value.ov, (ucl_hash_free_func)dtor);
			}
			obj->value.ov = NULL;
		}
		tmp = obj->next;
		dtor (obj);
		obj = tmp;

		if (!allow_rec) {
			break;
		}
	}
}