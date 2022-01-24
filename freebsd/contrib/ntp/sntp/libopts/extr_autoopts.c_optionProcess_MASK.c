#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int save_opts; } ;
struct TYPE_11__ {int curOptIdx; int fOptSet; int /*<<< orphan*/  (* pUsageProc ) (TYPE_2__*,int /*<<< orphan*/ ) ;TYPE_1__ specOptIdx; int /*<<< orphan*/  pOptDesc; scalar_t__ origArgCt; int /*<<< orphan*/ * pzCurOpt; } ;
typedef  TYPE_2__ tOptions ;
typedef  int /*<<< orphan*/  tOptDesc ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
#define  NO_EQUIVALENT 128 
 int OPTPROC_ERRSTOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  zbad_data_msg ; 

int
FUNC10(tOptions * opts, int a_ct, char ** a_v)
{
    if (! FUNC1(FUNC9(opts, a_v[0])))
        FUNC2(zbad_data_msg);
    
    /*
     *  Establish the real program name, the program full path,
     *  and do all the presetting the first time thru only.
     */
    if (! FUNC3(opts, a_ct, a_v))
        return 0;

    /*
     *  IF we are (re)starting,
     *  THEN reset option location
     */
    if (opts->curOptIdx <= 0) {
        opts->curOptIdx = 1;
        opts->pzCurOpt  = NULL;
    }

    if (! FUNC1(FUNC7(opts)))
        return (int)opts->origArgCt;

    /*
     *  IF    there were no errors
     *    AND we have RC/INI files
     *    AND there is a request to save the files
     *  THEN do that now before testing for conflicts.
     *       (conflicts are ignored in preset options)
     */
    switch (opts->specOptIdx.save_opts) {
    case 0:
    case NO_EQUIVALENT:
        break;
    default:
    {
        tOptDesc * od = opts->pOptDesc + opts->specOptIdx.save_opts;

        if (FUNC0(od)) {
            FUNC5(opts);
            FUNC6(EXIT_SUCCESS);
        }
    }
    }

    /*
     *  IF we are checking for errors,
     *  THEN look for too few occurrences of required options
     */
    if (((opts->fOptSet & OPTPROC_ERRSTOP) != 0)
       && (! FUNC4(opts)))
        (*opts->pUsageProc)(opts, EXIT_FAILURE);

    return (int)opts->curOptIdx;
}