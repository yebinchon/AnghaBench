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
struct TYPE_4__ {int /*<<< orphan*/  fOptSet; } ;
typedef  TYPE_1__ tOptions ;
typedef  int /*<<< orphan*/  tOptState ;
typedef  int /*<<< orphan*/  proc_state_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DIRECTION_CALLED ; 
 int /*<<< orphan*/  OPTION_LOAD_COOKED ; 
 int /*<<< orphan*/  OPTPROC_ERRSTOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SET ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(tOptions * opts, char const * line)
{
    tOptState st = FUNC2(SET);
    char *    pz;
    proc_state_mask_t sv_flags = opts->fOptSet;
    opts->fOptSet &= ~OPTPROC_ERRSTOP;
    FUNC0(pz, line, "opt line");
    FUNC3(opts, &st, pz, DIRECTION_CALLED, OPTION_LOAD_COOKED);
    FUNC1(pz);
    opts->fOptSet = sv_flags;
}