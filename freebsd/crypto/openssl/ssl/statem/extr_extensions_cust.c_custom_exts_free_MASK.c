#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t meths_count; TYPE_2__* meths; } ;
typedef  TYPE_1__ custom_ext_methods ;
struct TYPE_6__ {scalar_t__ add_cb; struct TYPE_6__* parse_arg; struct TYPE_6__* add_arg; } ;
typedef  TYPE_2__ custom_ext_method ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ custom_ext_add_old_cb_wrap ; 

void FUNC1(custom_ext_methods *exts)
{
    size_t i;
    custom_ext_method *meth;

    for (i = 0, meth = exts->meths; i < exts->meths_count; i++, meth++) {
        if (meth->add_cb != custom_ext_add_old_cb_wrap)
            continue;

        /* Old style API wrapper. Need to free the arguments too */
        FUNC0(meth->add_arg);
        FUNC0(meth->parse_arg);
    }
    FUNC0(exts->meths);
}