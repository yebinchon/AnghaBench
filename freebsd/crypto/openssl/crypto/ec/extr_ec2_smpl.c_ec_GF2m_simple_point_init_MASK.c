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
struct TYPE_3__ {int /*<<< orphan*/ * Z; int /*<<< orphan*/ * Y; int /*<<< orphan*/ * X; } ;
typedef  TYPE_1__ EC_POINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 () ; 

int FUNC2(EC_POINT *point)
{
    point->X = FUNC1();
    point->Y = FUNC1();
    point->Z = FUNC1();

    if (point->X == NULL || point->Y == NULL || point->Z == NULL) {
        FUNC0(point->X);
        FUNC0(point->Y);
        FUNC0(point->Z);
        return 0;
    }
    return 1;
}