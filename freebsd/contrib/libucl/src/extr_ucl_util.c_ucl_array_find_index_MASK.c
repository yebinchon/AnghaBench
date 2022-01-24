#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ucl_object_t ;
struct TYPE_4__ {unsigned int n; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 (TYPE_1__,unsigned int) ; 
 TYPE_1__* vec ; 

const ucl_object_t *
FUNC2 (const ucl_object_t *top, unsigned int index)
{
	FUNC0 (vec, top);

	if (vec != NULL && vec->n > 0 && index < vec->n) {
		return FUNC1 (*vec, index);
	}

	return NULL;
}