#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* lo; } ;
struct TYPE_10__ {int /*<<< orphan*/  pStack; } ;
struct TYPE_9__ {int /*<<< orphan*/  quot; int /*<<< orphan*/  rem; } ;
typedef  TYPE_1__ INTQR ;
typedef  TYPE_2__ FICL_VM ;
typedef  void* FICL_INT ;
typedef  TYPE_3__ DPINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 TYPE_1__ FUNC2 (TYPE_3__,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
    DPINT n1;
    FICL_INT n2;
    INTQR qr;

#if FICL_ROBUST > 1
    vmCheckStack(pVM, 2, 2);
#endif
    n2    = FUNC3(pVM->pStack);
    n1.lo = FUNC3(pVM->pStack);
    FUNC1(n1);

    qr = FUNC2(n1, n2);
    FUNC0(qr.rem);
    FUNC0(qr.quot);
    return;
}