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
struct TYPE_7__ {int optCt; int /*<<< orphan*/  pzPROGNAME; TYPE_2__* pOptDesc; } ;
typedef  TYPE_1__ tOptions ;
struct TYPE_8__ {int /*<<< orphan*/  optValue; } ;
typedef  TYPE_2__ tOptDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 char* UNK_OPT_FMT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  zOptionCase ; 
 char* zOptionFlag ; 

__attribute__((used)) static void
FUNC5(tOptions * opts)
{
    tOptDesc * od = opts->pOptDesc;
    int        opt_ct = opts->optCt;

    FUNC3(zOptionCase, stdout);

    for (;opt_ct > 0; od++, --opt_ct) {

        if (FUNC1(od) || ! FUNC0(od->optValue))
            continue;

        FUNC4(zOptionFlag, od->optValue);
        FUNC2(opts, od);
    }
    FUNC4(UNK_OPT_FMT, FLAG_STR, opts->pzPROGNAME);
}