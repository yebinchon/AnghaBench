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
struct TYPE_3__ {struct TYPE_3__* StackTop; } ;
typedef  TYPE_1__ DT_SUBTABLE ;

/* Variables and functions */
 TYPE_1__* AslGbl_SubtableStack ; 

void
FUNC0 (
    void)
{
    DT_SUBTABLE             *Subtable;


    Subtable = AslGbl_SubtableStack;

    if (Subtable)
    {
        AslGbl_SubtableStack = Subtable->StackTop;
    }
}