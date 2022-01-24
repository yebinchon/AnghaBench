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
struct freebsd32___sysctl_args {int namelen; scalar_t__ oldlenp; int /*<<< orphan*/  newlen; int /*<<< orphan*/  new; int /*<<< orphan*/  old; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CTL_MAXNAME ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  SCTL_MASK32 ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (scalar_t__,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,size_t) ; 
 int FUNC3 (struct thread*,int*,int,int /*<<< orphan*/ ,size_t*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct thread *td, struct freebsd32___sysctl_args *uap)
{
	int error, name[CTL_MAXNAME];
	size_t j, oldlen;
	uint32_t tmp;

	if (uap->namelen > CTL_MAXNAME || uap->namelen < 2)
		return (EINVAL);
 	error = FUNC0(uap->name, name, uap->namelen * sizeof(int));
 	if (error)
		return (error);
	if (uap->oldlenp) {
		error = FUNC1(uap->oldlenp, &tmp);
		oldlen = tmp;
	} else {
		oldlen = 0;
	}
	if (error != 0)
		return (EFAULT);
	error = FUNC3(td, name, uap->namelen,
		uap->old, &oldlen, 1,
		uap->new, uap->newlen, &j, SCTL_MASK32);
	if (error)
		return (error);
	if (uap->oldlenp)
		FUNC2(uap->oldlenp, j);
	return (0);
}