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
typedef  int sockaddr ;
struct msghdr {int* msg_name; int msg_namelen; int msg_iovlen; int /*<<< orphan*/  msg_flags; scalar_t__ msg_control; struct iovec* msg_iov; } ;
struct linux_recvfrom_args {int /*<<< orphan*/  fromlen; int /*<<< orphan*/  from; int /*<<< orphan*/  s; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
typedef  int l_sockaddr ;
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/ * iov_base; } ;
typedef  int /*<<< orphan*/  fromlen ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC1 (int*,int**,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(struct thread *td, struct linux_recvfrom_args *args)
{
	struct l_sockaddr *lsa;
	struct sockaddr *sa;
	struct msghdr msg;
	struct iovec aiov;
	int error, fromlen;

	if (FUNC0(args->fromlen) != NULL) {
		error = FUNC2(FUNC0(args->fromlen), &fromlen,
		    sizeof(fromlen));
		if (error != 0)
			return (error);
		if (fromlen < 0)
			return (EINVAL);
		sa = FUNC7(fromlen, M_SONAME, M_WAITOK);
	} else {
		fromlen = 0;
		sa = NULL;
	}

	msg.msg_name = sa;
	msg.msg_namelen = fromlen;
	msg.msg_iov = &aiov;
	msg.msg_iovlen = 1;
	aiov.iov_base = FUNC0(args->buf);
	aiov.iov_len = args->len;
	msg.msg_control = 0;
	msg.msg_flags = FUNC6(args->flags);

	error = FUNC5(td, args->s, &msg, UIO_SYSSPACE, NULL);
	if (error != 0)
		goto out;

	if (FUNC0(args->from) != NULL) {
		error = FUNC1(sa, &lsa, msg.msg_namelen);
		if (error == 0)
			error = FUNC3(lsa, FUNC0(args->from),
			    msg.msg_namelen);
		FUNC4(lsa, M_SONAME);
	}

	if (error == 0 && FUNC0(args->fromlen) != NULL)
		error = FUNC3(&msg.msg_namelen, FUNC0(args->fromlen),
		    sizeof(msg.msg_namelen));
out:
	FUNC4(sa, M_SONAME);
	return (error);
}