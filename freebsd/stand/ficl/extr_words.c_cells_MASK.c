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
typedef  int FICL_INT ;
typedef  int /*<<< orphan*/  CELL ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC3(FICL_VM *pVM)
{
    FICL_INT i;
#if FICL_ROBUST > 1
    vmCheckStack(pVM, 1, 1);
#endif

    i = FUNC0();
    FUNC1(i * (FICL_INT)sizeof (CELL));
    return;
}