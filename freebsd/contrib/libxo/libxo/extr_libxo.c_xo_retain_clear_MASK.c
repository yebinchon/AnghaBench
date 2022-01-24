#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* xre_format; struct TYPE_3__* xre_next; } ;
typedef  TYPE_1__ xo_retain_entry_t ;
struct TYPE_4__ {TYPE_1__** xr_bucket; } ;

/* Variables and functions */
 TYPE_2__ xo_retain ; 
 int xo_retain_count ; 
 unsigned int FUNC0 (char const*) ; 

void
FUNC1 (const char *fmt)
{
    xo_retain_entry_t **xrepp;
    unsigned hash = FUNC0(fmt);

    for (xrepp = &xo_retain.xr_bucket[hash]; *xrepp;
	 xrepp = &(*xrepp)->xre_next) {
	if ((*xrepp)->xre_format == fmt) {
	    *xrepp = (*xrepp)->xre_next;
	    xo_retain_count -= 1;
	    return;
	}
    }
}