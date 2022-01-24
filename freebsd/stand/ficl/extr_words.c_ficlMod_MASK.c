#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* lo; } ;
struct TYPE_6__ {int /*<<< orphan*/  rem; } ;
typedef  TYPE_1__ INTQR ;
typedef  int /*<<< orphan*/  FICL_VM ;
typedef  void* FICL_INT ;
typedef  TYPE_2__ DPINT ;

/* Variables and functions */
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__) ; 
 TYPE_1__ FUNC3 (TYPE_2__,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
    DPINT d1;
    FICL_INT n1;
    INTQR qr;
#if FICL_ROBUST > 1
    vmCheckStack(pVM,2,1);
#endif

    n1 = FUNC0();
    d1.lo = FUNC0();
    FUNC2(d1);
    qr = FUNC3(d1, n1);
    FUNC1(qr.rem);
    return;
}