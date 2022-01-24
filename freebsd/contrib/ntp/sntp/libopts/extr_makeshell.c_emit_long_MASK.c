#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int optCt; int /*<<< orphan*/  pzPROGNAME; TYPE_2__* pOptDesc; } ;
typedef  TYPE_1__ tOptions ;
struct TYPE_12__ {int /*<<< orphan*/ * pz_DisableName; int /*<<< orphan*/ * pz_Name; } ;
typedef  TYPE_2__ tOptDesc ;

/* Variables and functions */
 int /*<<< orphan*/  OPTION_STR ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 char* UNK_OPT_FMT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  zOptionCase ; 

__attribute__((used)) static void
FUNC6(tOptions * opts)
{
    tOptDesc * od = opts->pOptDesc;
    int        ct  = opts->optCt;

    FUNC4(zOptionCase, stdout);

    /*
     *  do each option, ...
     */
    do  {
        /*
         *  Documentation & compiled-out options
         */
        if (FUNC0(od))
            continue;

        FUNC3(od->pz_Name, od, opts);
        FUNC1(opts, od);

        /*
         *  Now, do the same thing for the disablement version of the option.
         */
        if (od->pz_DisableName != NULL) {
            FUNC3(od->pz_DisableName, od, opts);
            FUNC2(opts, od);
        }
    } while (od++, --ct > 0);

    FUNC5(UNK_OPT_FMT, OPTION_STR, opts->pzPROGNAME);
}