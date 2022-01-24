#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int boolean_t ;
struct TYPE_7__ {int abd_flags; } ;
typedef  TYPE_1__ abd_t ;

/* Variables and functions */
 int ABD_FLAG_META ; 
 TYPE_1__* FUNC0 (size_t,int) ; 
 TYPE_1__* FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

abd_t *
FUNC3(abd_t *sabd, size_t size)
{
	boolean_t is_metadata = (sabd->abd_flags & ABD_FLAG_META) != 0;
	if (FUNC2(sabd)) {
		return (FUNC1(size, is_metadata));
	} else {
		return (FUNC0(size, is_metadata));
	}
}