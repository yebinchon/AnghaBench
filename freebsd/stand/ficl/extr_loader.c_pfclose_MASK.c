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
struct TYPE_4__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(FICL_VM *pVM)
{
    int fd;

#if FICL_ROBUST > 1
    vmCheckStack(pVM, 1, 0);
#endif
    fd = FUNC1(pVM->pStack); /* get fd */
    if (fd != -1)
	FUNC0(fd);
    return;
}