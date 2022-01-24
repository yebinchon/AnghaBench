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
struct TYPE_5__ {int optCt; TYPE_2__* pOptDesc; } ;
typedef  TYPE_1__ tOptions ;
struct TYPE_6__ {int /*<<< orphan*/ * pz_DisableName; int /*<<< orphan*/ * pz_Name; } ;
typedef  TYPE_2__ tOptDesc ;

/* Variables and functions */
 char* LONG_OPT_MARKER ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 char* zambig_file ; 
 int /*<<< orphan*/  zambig_list_msg ; 

__attribute__((used)) static void
FUNC4(tOptions * opts, char const * name, int nm_len)
{
    char const * const hyph =
        FUNC0(opts) ? "" : LONG_OPT_MARKER;

    tOptDesc * pOD = opts->pOptDesc;
    int        idx = 0;

    FUNC2(zambig_list_msg, stderr);
    do  {
        if (pOD->pz_Name == NULL)
            continue; /* doc option */

        if (FUNC3(name, pOD->pz_Name, nm_len) == 0)
            FUNC1(stderr, zambig_file, hyph, pOD->pz_Name);

        else if (  (pOD->pz_DisableName != NULL)
                && (FUNC3(name, pOD->pz_DisableName, nm_len) == 0)
                )
            FUNC1(stderr, zambig_file, hyph, pOD->pz_DisableName);
    } while (pOD++, (++idx < opts->optCt));
}