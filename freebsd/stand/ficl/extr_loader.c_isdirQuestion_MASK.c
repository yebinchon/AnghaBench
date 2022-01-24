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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FICL_FALSE ; 
 int /*<<< orphan*/  FICL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
    struct stat sb;
    FICL_INT flag;
    int fd;

#if FICL_ROBUST > 1
    vmCheckStack(pVM, 1, 1);
#endif

    fd = FUNC2(pVM->pStack);
    flag = FICL_FALSE;
    do {
        if (fd < 0)
            break;
        if (FUNC1(fd, &sb) < 0)
            break;
        if (!FUNC0(sb.st_mode))
            break;
        flag = FICL_TRUE;
    } while (0);
    FUNC3(pVM->pStack, flag);
}