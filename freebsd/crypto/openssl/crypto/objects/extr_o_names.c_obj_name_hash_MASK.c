#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long (* hash_func ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {unsigned long type; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ OBJ_NAME ;

/* Variables and functions */
 int /*<<< orphan*/ * name_funcs_stack ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC4(const OBJ_NAME *a)
{
    unsigned long ret;

    if ((name_funcs_stack != NULL)
        && (FUNC1(name_funcs_stack) > a->type)) {
        ret =
            FUNC2(name_funcs_stack,
                                a->type)->hash_func(a->name);
    } else {
        ret = FUNC0(a->name);
    }
    ret ^= a->type;
    return ret;
}