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
struct msghdr {int msg_iovlen; scalar_t__ msg_flags; int /*<<< orphan*/ * msg_control; struct iovec* msg_iov; int /*<<< orphan*/  msg_namelen; void* msg_name; } ;
struct linux_sendto_args {int /*<<< orphan*/  flags; int /*<<< orphan*/  s; int /*<<< orphan*/  len; int /*<<< orphan*/  msg; int /*<<< orphan*/  tolen; int /*<<< orphan*/  to; } ;
struct iovec {int /*<<< orphan*/  iov_len; void* iov_base; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 scalar_t__ FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,struct linux_sendto_args*) ; 

int
FUNC4(struct thread *td, struct linux_sendto_args *args)
{
	struct msghdr msg;
	struct iovec aiov;

	if (FUNC1(td, args->s) == 0)
		/* IP_HDRINCL set, tweak the packet before sending */
		return (FUNC3(td, args));

	msg.msg_name = FUNC0(args->to);
	msg.msg_namelen = args->tolen;
	msg.msg_iov = &aiov;
	msg.msg_iovlen = 1;
	msg.msg_control = NULL;
	msg.msg_flags = 0;
	aiov.iov_base = FUNC0(args->msg);
	aiov.iov_len = args->len;
	return (FUNC2(td, args->s, &msg, args->flags, NULL,
	    UIO_USERSPACE));
}