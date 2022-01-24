#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* (* globallookup ) (char const*) ;} ;
typedef  TYPE_1__ DSO_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  DSO_F_DSO_GLOBAL_LOOKUP ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  DSO_R_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* default_DSO_meth ; 
 void* FUNC2 (char const*) ; 

void *FUNC3(const char *name)
{
    DSO_METHOD *meth = default_DSO_meth;
    if (meth == NULL)
        meth = FUNC0();
    if (meth->globallookup == NULL) {
        FUNC1(DSO_F_DSO_GLOBAL_LOOKUP, DSO_R_UNSUPPORTED);
        return NULL;
    }
    return (*meth->globallookup) (name);
}