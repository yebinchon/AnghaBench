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
struct TYPE_5__ {int fOptSet; int optCt; int /*<<< orphan*/ * pzDetail; TYPE_2__* pOptDesc; int /*<<< orphan*/  pzPROGNAME; int /*<<< orphan*/  pzProgPath; int /*<<< orphan*/  pzRcName; int /*<<< orphan*/ * papzHomeList; } ;
typedef  TYPE_1__ tOptions ;
struct TYPE_6__ {int /*<<< orphan*/  (* pOptProc ) (int /*<<< orphan*/ ,TYPE_2__*) ;int /*<<< orphan*/  fOptState; } ;
typedef  TYPE_2__ tOptDesc ;

/* Variables and functions */
 int /*<<< orphan*/  NL ; 
#define  OPARG_TYPE_ENUMERATION 129 
#define  OPARG_TYPE_MEMBERSHIP 128 
 int /*<<< orphan*/  OPTPROC_EMIT_USAGE ; 
 int OPTPROC_ENVIRON ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ displayEnum ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  option_usage_fp ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 char* zExamineFmt ; 
 int /*<<< orphan*/ * zPresetIntro ; 

__attribute__((used)) static void
FUNC7(tOptions * opts)
{
    bool need_intro = (opts->papzHomeList == NULL);

    /*
     *  Display all the places we look for config files, if we have
     *  a list of directories to search.
     */
    if (! need_intro)
        FUNC5(opts->papzHomeList, opts->pzRcName, opts->pzProgPath);

    /*
     *  Let the user know about environment variable settings
     */
    if ((opts->fOptSet & OPTPROC_ENVIRON) != 0) {
        if (need_intro)
            FUNC4(zPresetIntro, option_usage_fp);

        FUNC2(option_usage_fp, zExamineFmt, opts->pzPROGNAME);
    }

    /*
     *  IF we found an enumeration,
     *  THEN hunt for it again.  Call the handler proc with a NULL
     *       option struct pointer.  That tells it to display the keywords.
     */
    if (displayEnum) {
        int        ct     = opts->optCt;
        int        optNo  = 0;
        tOptDesc * od     = opts->pOptDesc;

        FUNC3(NL, option_usage_fp);
        FUNC1(option_usage_fp);
        do  {
            switch (FUNC0(od->fOptState)) {
            case OPARG_TYPE_ENUMERATION:
            case OPARG_TYPE_MEMBERSHIP:
                (*(od->pOptProc))(OPTPROC_EMIT_USAGE, od);
            }
        } while (od++, optNo++, (--ct > 0));
    }

    /*
     *  If there is a detail string, now is the time for that.
     */
    if (opts->pzDetail != NULL)
        FUNC4(opts->pzDetail, option_usage_fp);
}