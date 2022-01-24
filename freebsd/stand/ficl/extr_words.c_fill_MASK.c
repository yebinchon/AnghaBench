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
typedef  int /*<<< orphan*/  FICL_VM ;
typedef  scalar_t__ FICL_UNS ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(FICL_VM *pVM)
{
    char ch;
    FICL_UNS u;
    char *cp;
#if FICL_ROBUST > 1
    vmCheckStack(pVM,3,0);
#endif
    ch = (char)FUNC0();
    u = FUNC2();
    cp = (char *)FUNC1();

    while (u > 0)
    {
        *cp++ = ch;
        u--;
    }
    return;
}