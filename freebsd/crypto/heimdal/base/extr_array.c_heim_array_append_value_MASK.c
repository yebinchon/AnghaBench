#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  heim_object_t ;
typedef  TYPE_1__* heim_array_t ;
struct TYPE_3__ {int len; int /*<<< orphan*/ * val; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

int
FUNC2(heim_array_t array, heim_object_t object)
{
    heim_object_t *ptr;

    ptr = FUNC1(array->val, (array->len + 1) * sizeof(array->val[0]));
    if (ptr == NULL)
	return ENOMEM;
    array->val = ptr;
    array->val[array->len++] = FUNC0(object);

    return 0;
}