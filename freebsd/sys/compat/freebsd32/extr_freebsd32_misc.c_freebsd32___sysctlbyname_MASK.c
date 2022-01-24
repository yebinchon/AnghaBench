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
typedef  size_t uint32_t ;
struct thread {int dummy; } ;
struct freebsd32___sysctlbyname_args {int /*<<< orphan*/ * oldlenp; int /*<<< orphan*/  newlen; int /*<<< orphan*/  new; int /*<<< orphan*/  old; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  SCTL_MASK32 ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC3(struct thread *td,
    struct freebsd32___sysctlbyname_args *uap)
{
	size_t oldlen, rv;
	int error;
	uint32_t tmp;

	if (uap->oldlenp != NULL) {
		error = FUNC0(uap->oldlenp, &tmp);
		oldlen = tmp;
	} else {
		error = oldlen = 0;
	}
	if (error != 0)
		return (EFAULT);
	error = FUNC1(td, uap->name, uap->namelen, uap->old,
	    &oldlen, uap->new, uap->newlen, &rv, SCTL_MASK32, 1);
	if (error != 0)
		return (error);
	if (uap->oldlenp != NULL)
		error = FUNC2(uap->oldlenp, rv);

	return (error);
}