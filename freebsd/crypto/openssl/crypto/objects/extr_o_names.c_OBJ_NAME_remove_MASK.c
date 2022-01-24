#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* free_func ) (char const*,scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {char const* name; int type; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ OBJ_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int OBJ_NAME_ALIAS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * name_funcs_stack ; 
 int /*<<< orphan*/  names_lh ; 
 int /*<<< orphan*/  obj_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC8(const char *name, int type)
{
    OBJ_NAME on, *ret;
    int ok = 0;

    if (!FUNC2())
        return 0;

    FUNC1(obj_lock);

    type &= ~OBJ_NAME_ALIAS;
    on.name = name;
    on.type = type;
    ret = FUNC4(names_lh, &on);
    if (ret != NULL) {
        /* free things */
        if ((name_funcs_stack != NULL)
            && (FUNC5(name_funcs_stack) > ret->type)) {
            /*
             * XXX: I'm not sure I understand why the free function should
             * get three arguments... -- Richard Levitte
             */
            FUNC6(name_funcs_stack,
                                ret->type)->free_func(ret->name, ret->type,
                                                      ret->data);
        }
        FUNC3(ret);
        ok = 1;
    }

    FUNC0(obj_lock);
    return ok;
}