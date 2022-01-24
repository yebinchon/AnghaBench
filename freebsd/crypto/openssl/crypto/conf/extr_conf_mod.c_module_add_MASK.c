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
typedef  int /*<<< orphan*/  conf_init_func ;
typedef  int /*<<< orphan*/  conf_finish_func ;
struct TYPE_7__ {struct TYPE_7__* name; int /*<<< orphan*/ * finish; int /*<<< orphan*/ * init; int /*<<< orphan*/ * dso; } ;
typedef  int /*<<< orphan*/  DSO ;
typedef  TYPE_1__ CONF_MODULE ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_F_MODULE_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * supported_modules ; 

__attribute__((used)) static CONF_MODULE *FUNC6(DSO *dso, const char *name,
                               conf_init_func *ifunc, conf_finish_func *ffunc)
{
    CONF_MODULE *tmod = NULL;
    if (supported_modules == NULL)
        supported_modules = FUNC4();
    if (supported_modules == NULL)
        return NULL;
    if ((tmod = FUNC3(sizeof(*tmod))) == NULL) {
        FUNC0(CONF_F_MODULE_ADD, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    tmod->dso = dso;
    tmod->name = FUNC2(name);
    tmod->init = ifunc;
    tmod->finish = ffunc;
    if (tmod->name == NULL) {
        FUNC1(tmod);
        return NULL;
    }

    if (!FUNC5(supported_modules, tmod)) {
        FUNC1(tmod->name);
        FUNC1(tmod);
        return NULL;
    }

    return tmod;
}