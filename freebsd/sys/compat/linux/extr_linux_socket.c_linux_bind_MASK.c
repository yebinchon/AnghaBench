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
struct thread {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct linux_bind_args {int namelen; int /*<<< orphan*/  s; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sockaddr**,int*) ; 

int
FUNC4(struct thread *td, struct linux_bind_args *args)
{
	struct sockaddr *sa;
	int error;

	error = FUNC3(FUNC0(args->name), &sa,
	    &args->namelen);
	if (error != 0)
		return (error);

	error = FUNC2(td, AT_FDCWD, args->s, sa);
	FUNC1(sa, M_SONAME);

	/* XXX */
	if (error == EADDRNOTAVAIL && args->namelen != sizeof(struct sockaddr_in))
		return (EINVAL);
	return (error);
}