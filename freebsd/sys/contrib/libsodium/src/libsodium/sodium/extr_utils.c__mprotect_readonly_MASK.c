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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ FUNC0 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (void*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void *ptr, size_t size)
{
#ifdef HAVE_MPROTECT
    return mprotect(ptr, size, PROT_READ);
#elif defined(WINAPI_DESKTOP)
    DWORD old;
    return -(VirtualProtect(ptr, size, PAGE_READONLY, &old) == 0);
#else
    errno = ENOSYS;
    return -1;
#endif
}