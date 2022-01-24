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
struct TYPE_3__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(FICL_VM *pVM)
{
    size_t size;
    void *p;

    size = FUNC3(pVM->pStack);
    p = FUNC2(size);
    FUNC1(p);
    if (p)
        FUNC0(0);
    else
        FUNC0(1);
}