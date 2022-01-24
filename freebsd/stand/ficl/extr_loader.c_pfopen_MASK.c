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
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  VE_GUESS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC10(FICL_VM *pVM)
{
    int     mode, fd, count;
    char    *ptr, *name;

#if FICL_ROBUST > 1
    vmCheckStack(pVM, 3, 1);
#endif

    mode = FUNC5(pVM->pStack);    /* get mode */
    count = FUNC5(pVM->pStack);   /* get count */
    ptr = FUNC6(pVM->pStack);     /* get ptr */

    if ((count < 0) || (ptr == NULL)) {
        FUNC7(pVM->pStack, -1);
        return;
    }

    /* ensure that the string is null terminated */
    name = (char *)FUNC3(count+1);
    FUNC0(ptr,name,count);
    name[count] = 0;

    /* open the file */
    fd = FUNC4(name, mode);
#ifdef LOADER_VERIEXEC
    if (fd >= 0) {
	if (verify_file(fd, name, 0, VE_GUESS) < 0) {
	    /* not verified writing ok but reading is not */
	    if ((mode & O_ACCMODE) != O_WRONLY) {
		close(fd);
		fd = -1;
	    }
	} else {
	    /* verified reading ok but writing is not */
	    if ((mode & O_ACCMODE) != O_RDONLY) {
		close(fd);
		fd = -1;
	    }
	}
    }
#endif
    FUNC2(name);
    FUNC7(pVM->pStack, fd);
    return;
}