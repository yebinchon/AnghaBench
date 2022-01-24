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
typedef  int teEnvPresetType ;
typedef  int /*<<< orphan*/  tOptions ;
struct TYPE_6__ {scalar_t__* pzOptArg; int flags; TYPE_1__* pOD; int /*<<< orphan*/  optType; } ;
typedef  TYPE_2__ tOptState ;
struct TYPE_5__ {int fOptState; int /*<<< orphan*/ * pz_DisablePfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  ENV_IMM 129 
#define  ENV_NON_IMM 128 
 scalar_t__ NUL ; 
 scalar_t__ OPARG_TYPE_NONE ; 
 int OPTST_ALLOC_ARG ; 
 int OPTST_ARG_OPTIONAL ; 
 int OPTST_DISABLED ; 
 scalar_t__ FUNC4 (int) ; 
 int OPTST_PRESET ; 
 int /*<<< orphan*/  TOPT_UNDEFINED ; 
 scalar_t__* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC7 (scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(tOptState * os, char * env_name,
            tOptions * pOpts, teEnvPresetType type)
{
    os->pzOptArg = FUNC5(env_name);
    if (os->pzOptArg == NULL)
        return;

    os->flags   = OPTST_PRESET | OPTST_ALLOC_ARG | os->pOD->fOptState;
    os->optType = TOPT_UNDEFINED;

    if (  (os->pOD->pz_DisablePfx != NULL)
       && (FUNC7(os->pzOptArg, os->pOD->pz_DisablePfx) == 0)) {
        os->flags |= OPTST_DISABLED;
        os->pzOptArg = NULL;
        FUNC6(pOpts, os);
        return;
    }

    switch (type) {
    case ENV_IMM:
        /*
         *  Process only immediate actions
         */
        if (FUNC1(os->flags))
            break;
        return;

    case ENV_NON_IMM:
        /*
         *  Process only NON immediate actions
         */
        if (FUNC2(os->flags) || FUNC3(os->flags))
            break;
        return;

    default: /* process everything */
        break;
    }

    /*
     *  Make sure the option value string is persistent and consistent.
     *
     *  The interpretation of the option value depends
     *  on the type of value argument the option takes
     */
    if (FUNC4(os->pOD->fOptState) == OPARG_TYPE_NONE) {
        /*
         *  Ignore any value.
         */
        os->pzOptArg = NULL;

    } else if (os->pzOptArg[0] == NUL) {
        /*
         * If the argument is the empty string and the argument is
         * optional, then treat it as if the option was not specified.
         */
        if ((os->pOD->fOptState & OPTST_ARG_OPTIONAL) == 0)
            return;
        os->pzOptArg = NULL;

    } else {
        FUNC0(os->pzOptArg, os->pzOptArg, "option argument");
        os->flags |= OPTST_ALLOC_ARG;
    }

    FUNC6(pOpts, os);
}