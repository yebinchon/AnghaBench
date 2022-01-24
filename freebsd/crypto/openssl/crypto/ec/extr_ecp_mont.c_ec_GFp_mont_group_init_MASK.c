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
struct TYPE_4__ {int /*<<< orphan*/ * field_data2; int /*<<< orphan*/ * field_data1; } ;
typedef  TYPE_1__ EC_GROUP ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 

int FUNC1(EC_GROUP *group)
{
    int ok;

    ok = FUNC0(group);
    group->field_data1 = NULL;
    group->field_data2 = NULL;
    return ok;
}