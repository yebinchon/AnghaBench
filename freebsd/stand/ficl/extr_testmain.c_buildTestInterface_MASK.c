#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FICL_SYSTEM ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DEFAULT ; 
 int /*<<< orphan*/  clocksPerSec ; 
 int /*<<< orphan*/  execxt ; 
 int /*<<< orphan*/  ficlBreak ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ficlChDir ; 
 int /*<<< orphan*/  ficlClock ; 
 int /*<<< orphan*/  ficlGetCWD ; 
 int /*<<< orphan*/  ficlLoad ; 
 int /*<<< orphan*/  ficlSystem ; 
 int /*<<< orphan*/  spewHash ; 

void FUNC1(FICL_SYSTEM *pSys)
{
    FUNC0(pSys, "break",    ficlBreak,    FW_DEFAULT);
    FUNC0(pSys, "clock",    ficlClock,    FW_DEFAULT);
    FUNC0(pSys, "cd",       ficlChDir,    FW_DEFAULT);
    FUNC0(pSys, "execxt",   execxt,       FW_DEFAULT);
    FUNC0(pSys, "load",     ficlLoad,     FW_DEFAULT);
    FUNC0(pSys, "pwd",      ficlGetCWD,   FW_DEFAULT);
    FUNC0(pSys, "system",   ficlSystem,   FW_DEFAULT);
    FUNC0(pSys, "spewhash", spewHash,     FW_DEFAULT);
    FUNC0(pSys, "clocks/sec", 
                                clocksPerSec, FW_DEFAULT);

    return;
}