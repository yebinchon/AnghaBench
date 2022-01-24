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
 int FUNC0 (int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
    int     fd, len;
    char *buf;

#if FICL_ROBUST > 1
    vmCheckStack(pVM, 3, 1);
#endif
    len = FUNC1(pVM->pStack); /* get number of bytes to read */
    buf = FUNC2(pVM->pStack); /* get buffer */
    fd = FUNC1(pVM->pStack); /* get fd */
    if (len > 0 && buf && fd != -1)
	FUNC3(pVM->pStack, FUNC0(fd, buf, len));
    else
	FUNC3(pVM->pStack, -1);
    return;
}