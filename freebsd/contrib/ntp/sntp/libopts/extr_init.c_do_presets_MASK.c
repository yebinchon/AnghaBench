#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tSuccess ;
struct TYPE_7__ {scalar_t__ save_opts; } ;
struct TYPE_8__ {int /*<<< orphan*/  fOptSet; int /*<<< orphan*/ * papzHomeList; TYPE_1__ specOptIdx; int /*<<< orphan*/ * pOptDesc; } ;
typedef  TYPE_2__ tOptions ;
typedef  int /*<<< orphan*/  tOptDesc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENV_ALL ; 
 int /*<<< orphan*/  ENV_IMM ; 
 int /*<<< orphan*/  ENV_NON_IMM ; 
 int /*<<< orphan*/  FAILURE ; 
 scalar_t__ NO_EQUIVALENT ; 
 int /*<<< orphan*/  OPTPROC_PRESETTING ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static tSuccess
FUNC5(tOptions * opts)
{
    tOptDesc * od = NULL;

    if (! FUNC1(FUNC3(opts)))
        return FAILURE;

    /*
     *  IF this option set has a --save-opts option, then it also
     *  has a --load-opts option.  See if a command line option has disabled
     *  option presetting.
     */
    if (  (opts->specOptIdx.save_opts != NO_EQUIVALENT)
       && (opts->specOptIdx.save_opts != 0)) {
        od = opts->pOptDesc + opts->specOptIdx.save_opts + 1;
        if (FUNC0(od))
            return SUCCESS;
    }

    /*
     *  Until we return from this procedure, disable non-presettable opts
     */
    opts->fOptSet |= OPTPROC_PRESETTING;
    /*
     *  IF there are no config files,
     *  THEN do any environment presets and leave.
     */
    if (opts->papzHomeList == NULL) {
        FUNC2(opts, ENV_ALL);
    }
    else {
        FUNC2(opts, ENV_IMM);

        /*
         *  Check to see if environment variables have disabled presetting.
         */
        if ((od != NULL) && ! FUNC0(od))
            FUNC4(opts);

        /*
         *  ${PROGRAM_LOAD_OPTS} value of "no" cannot disable other environment
         *  variable options.  Only the loading of .rc files.
         */
        FUNC2(opts, ENV_NON_IMM);
    }
    opts->fOptSet &= ~OPTPROC_PRESETTING;

    return SUCCESS;
}