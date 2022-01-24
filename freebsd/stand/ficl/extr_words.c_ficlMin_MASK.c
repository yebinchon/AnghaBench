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
typedef  scalar_t__ FICL_INT ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC3(FICL_VM *pVM)
{
    FICL_INT n2;
    FICL_INT n1;
#if FICL_ROBUST > 1
    vmCheckStack(pVM,2,1);
#endif

    n2 = FUNC0();
    n1 = FUNC0();

    FUNC1((n1 < n2) ? n1 : n2);
    return;
}