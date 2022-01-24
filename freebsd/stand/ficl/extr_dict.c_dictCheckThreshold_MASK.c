#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int u; } ;
struct TYPE_8__ {scalar_t__ u; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/  dict; int /*<<< orphan*/  here; } ;
typedef  TYPE_1__ FICL_DICT ;
typedef  int /*<<< orphan*/  CELL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_3__ dictIncrease ; 
 TYPE_2__ dictThreshold ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(FICL_DICT* dp)
{
    if( FUNC2(dp) < dictThreshold.u ) {
        dp->dict = FUNC3( dictIncrease.u * sizeof (CELL) );
        FUNC0(dp->dict);
        dp->here = dp->dict;
        dp->size = dictIncrease.u;
        FUNC1(dp);
    }
}