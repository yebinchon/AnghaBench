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
typedef  TYPE_1__* heim_array_t ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/ * val; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  array_object ; 

heim_array_t
FUNC1(void)
{
    heim_array_t array;

    array = FUNC0(&array_object, sizeof(*array));
    if (array == NULL)
	return NULL;

    array->val = NULL;
    array->len = 0;

    return array;
}