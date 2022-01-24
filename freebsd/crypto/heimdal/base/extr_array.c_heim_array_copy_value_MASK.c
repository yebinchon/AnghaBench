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
struct TYPE_3__ {size_t len; int /*<<< orphan*/ * val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

heim_object_t
FUNC2(heim_array_t array, size_t idx)
{
    if (idx >= array->len)
	FUNC0("index too large");
    return FUNC1(array->val[idx]);
}