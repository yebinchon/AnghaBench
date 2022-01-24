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
struct ck_array {int n_entries; struct _ck_array* transaction; TYPE_1__* allocator; struct _ck_array* active; } ;
struct _ck_array {int length; void** values; } ;
struct TYPE_2__ {struct _ck_array* (* realloc ) (struct _ck_array*,int,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct _ck_array**,struct _ck_array*) ; 
 int /*<<< orphan*/  FUNC2 (int*,unsigned int) ; 
 struct _ck_array* FUNC3 (struct _ck_array*,int,int,int) ; 
 struct _ck_array* FUNC4 (struct _ck_array*,int,int,int) ; 

bool
FUNC5(struct ck_array *array, void *value)
{
	struct _ck_array *target;
	unsigned int size;

	/*
	 * If no transaction copy has been necessary, attempt to do in-place
	 * modification of the array.
	 */
	if (array->transaction == NULL) {
		target = array->active;

		if (array->n_entries == target->length) {
			size = target->length << 1;

			target = array->allocator->realloc(target,
			    sizeof(struct _ck_array) + sizeof(void *) * array->n_entries,
			    sizeof(struct _ck_array) + sizeof(void *) * size,
			    true);

			if (target == NULL)
				return false;

			FUNC2(&target->length, size);

			/* Serialize with respect to contents. */
			FUNC0();
			FUNC1(&array->active, target);
		}

		target->values[array->n_entries++] = value;
		return true;
	}

	target = array->transaction;
	if (array->n_entries == target->length) {
		size = target->length << 1;

		target = array->allocator->realloc(target,
		    sizeof(struct _ck_array) + sizeof(void *) * array->n_entries,
		    sizeof(struct _ck_array) + sizeof(void *) * size,
		    true);

		if (target == NULL)
			return false;

		target->length = size;
		array->transaction = target;
	}

	target->values[array->n_entries++] = value;
	return false;
}