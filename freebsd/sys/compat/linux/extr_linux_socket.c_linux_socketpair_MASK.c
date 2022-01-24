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
struct socketpair_args {scalar_t__ domain; int type; int* rsv; scalar_t__ protocol; } ;
struct linux_socketpair_args {int type; scalar_t__ protocol; int /*<<< orphan*/  rsv; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
 int LINUX_SOCK_MAX ; 
 int LINUX_SOCK_TYPE_MASK ; 
 scalar_t__ PF_LOCAL ; 
 scalar_t__ PF_UNIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,struct socketpair_args*) ; 

int
FUNC4(struct thread *td, struct linux_socketpair_args *args)
{
	struct socketpair_args /* {
		int domain;
		int type;
		int protocol;
		int *rsv;
	} */ bsd_args;
	int error;

	bsd_args.domain = FUNC2(args->domain);
	if (bsd_args.domain != PF_LOCAL)
		return (EAFNOSUPPORT);
	bsd_args.type = args->type & LINUX_SOCK_TYPE_MASK;
	if (bsd_args.type < 0 || bsd_args.type > LINUX_SOCK_MAX)
		return (EINVAL);
	error = FUNC1(args->type & ~LINUX_SOCK_TYPE_MASK,
		&bsd_args.type);
	if (error != 0)
		return (error);
	if (args->protocol != 0 && args->protocol != PF_UNIX)

		/*
		 * Use of PF_UNIX as protocol argument is not right,
		 * but Linux does it.
		 * Do not map PF_UNIX as its Linux value is identical
		 * to FreeBSD one.
		 */
		return (EPROTONOSUPPORT);
	else
		bsd_args.protocol = 0;
	bsd_args.rsv = (int *)FUNC0(args->rsv);
	return (FUNC3(td, &bsd_args));
}