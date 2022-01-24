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
struct TYPE_6__ {int /*<<< orphan*/  needed; scalar_t__ marker; } ;
typedef  TYPE_1__ Obj_Entry ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(Obj_Entry *first, int flags)
{
    Obj_Entry *obj;

    for (obj = first; obj != NULL; obj = FUNC0(obj, next)) {
	if (obj->marker)
	    continue;
	if (FUNC1(obj, obj->needed, flags) == -1)
	    return (-1);
    }
    return (0);
}