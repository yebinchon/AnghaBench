#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * dp; } ;
typedef  TYPE_1__ FICL_SYSTEM ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ficlInb ; 
 int /*<<< orphan*/  ficlOutb ; 

__attribute__((used)) static void FUNC2(FICL_SYSTEM *pSys)
{
    FICL_DICT *dp = pSys->dp;
    FUNC0 (dp);

    FUNC1(dp, "outb",      ficlOutb,       FW_DEFAULT);
    FUNC1(dp, "inb",       ficlInb,        FW_DEFAULT);
}