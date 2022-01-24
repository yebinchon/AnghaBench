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
struct TYPE_3__ {int /*<<< orphan*/  count; int /*<<< orphan*/  text; } ;
typedef  int /*<<< orphan*/  FICL_VM ;
typedef  TYPE_1__ FICL_STRING ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC4(FICL_VM *pVM)
{
    FICL_STRING *sp;
#if FICL_ROBUST > 1
    vmCheckStack(pVM,1,2);
#endif

    sp = FUNC0();
    FUNC1(sp->text);
    FUNC2(sp->count);
    return;
}