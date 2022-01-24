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
struct msghdr {int msg_iovlen; scalar_t__ msg_namelen; int /*<<< orphan*/  msg_flags; int /*<<< orphan*/ * msg_control; struct iovec* msg_iov; void* msg_name; } ;
struct iovec {int /*<<< orphan*/  iov_len; void* iov_base; } ;
struct freebsd32_recvfrom_args {scalar_t__ fromlenaddr; int /*<<< orphan*/  s; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; scalar_t__ buf; scalar_t__ from; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC1 (void*,scalar_t__*,int) ; 
 int FUNC2 (scalar_t__*,void*,int) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC4(struct thread *td,
		   struct freebsd32_recvfrom_args *uap)
{
	struct msghdr msg;
	struct iovec aiov;
	int error;

	if (uap->fromlenaddr) {
		error = FUNC1(FUNC0(uap->fromlenaddr), &msg.msg_namelen,
		    sizeof(msg.msg_namelen));
		if (error)
			return (error);
	} else {
		msg.msg_namelen = 0;
	}

	msg.msg_name = FUNC0(uap->from);
	msg.msg_iov = &aiov;
	msg.msg_iovlen = 1;
	aiov.iov_base = FUNC0(uap->buf);
	aiov.iov_len = uap->len;
	msg.msg_control = NULL;
	msg.msg_flags = uap->flags;
	error = FUNC3(td, uap->s, &msg, UIO_USERSPACE, NULL);
	if (error == 0 && uap->fromlenaddr)
		error = FUNC2(&msg.msg_namelen, FUNC0(uap->fromlenaddr),
		    sizeof (msg.msg_namelen));
	return (error);
}