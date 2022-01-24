#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* ml_index_func ) (TYPE_1__*,void*) ;} ;
typedef  TYPE_1__ multilist_t ;
typedef  int /*<<< orphan*/  multilist_sublist_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 

multilist_sublist_t *
FUNC2(multilist_t *ml, void *obj)
{
	return (FUNC0(ml, ml->ml_index_func(ml, obj)));
}