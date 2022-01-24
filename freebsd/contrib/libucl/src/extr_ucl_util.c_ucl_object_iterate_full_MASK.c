#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; struct TYPE_6__* next; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/  ucl_object_iter_t ;
struct ucl_object_safe_iter {TYPE_1__* impl_it; int /*<<< orphan*/ * expl_it; } ;
typedef  enum ucl_iterate_type { ____Placeholder_ucl_iterate_type } ucl_iterate_type ;

/* Variables and functions */
 scalar_t__ UCL_ARRAY ; 
 int UCL_ITERATE_EXPLICIT ; 
 int UCL_ITERATE_IMPLICIT ; 
 scalar_t__ UCL_OBJECT ; 
 struct ucl_object_safe_iter* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_object_safe_iter*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ **,int) ; 
 TYPE_1__ const* FUNC3 (int /*<<< orphan*/ ,int) ; 

const ucl_object_t*
FUNC4 (ucl_object_iter_t it, enum ucl_iterate_type type)
{
	struct ucl_object_safe_iter *rit = FUNC0 (it);
	const ucl_object_t *ret = NULL;

	FUNC1 (rit);

	if (rit->impl_it == NULL) {
		return NULL;
	}

	if (rit->impl_it->type == UCL_OBJECT || rit->impl_it->type == UCL_ARRAY) {
		ret = FUNC2 (rit->impl_it, &rit->expl_it, true);

		if (ret == NULL && (type & UCL_ITERATE_IMPLICIT)) {
			/* Need to switch to another implicit object in chain */
			rit->impl_it = rit->impl_it->next;
			rit->expl_it = NULL;

			return FUNC3 (it, type);
		}
	}
	else {
		/* Just iterate over the implicit array */
		ret = rit->impl_it;
		rit->impl_it = rit->impl_it->next;

		if (type & UCL_ITERATE_EXPLICIT) {
			/* We flatten objects if need to expand values */
			if (ret->type == UCL_OBJECT || ret->type == UCL_ARRAY) {
				return FUNC3 (it, type);
			}
		}
	}

	return ret;
}