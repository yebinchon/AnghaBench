#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pzPROGNAME; } ;
typedef  TYPE_1__ tOptions ;
struct TYPE_7__ {int /*<<< orphan*/  pz_NAME; scalar_t__ optCookie; } ;
typedef  TYPE_2__ tOptDesc ;
struct TYPE_8__ {char** apzArgs; int useCt; } ;
typedef  TYPE_3__ tArgList ;

/* Variables and functions */
 char* ARG_BY_NUM_FMT ; 
 char* EXPORT_ARG_FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* zOptCookieCt ; 

__attribute__((used)) static void
FUNC2(tOptions * pOpts, tOptDesc * pOD)
{
    tArgList *      pAL = (tArgList *)pOD->optCookie;
    char const **   ppz = pAL->apzArgs;
    int             ct  = pAL->useCt;

    FUNC1(zOptCookieCt, pOpts->pzPROGNAME, pOD->pz_NAME, ct);

    while (--ct >= 0) {
        FUNC1(ARG_BY_NUM_FMT, pOpts->pzPROGNAME, pOD->pz_NAME,
               pAL->useCt - ct);
        FUNC0(*(ppz++));
        FUNC1(EXPORT_ARG_FMT, pOpts->pzPROGNAME, pOD->pz_NAME,
               pAL->useCt - ct);
    }
}