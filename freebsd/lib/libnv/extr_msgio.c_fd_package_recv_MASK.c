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
typedef  int /*<<< orphan*/  uint8_t ;
struct msghdr {int iov_len; int msg_iovlen; size_t msg_controllen; int /*<<< orphan*/ * msg_control; struct msghdr* msg_iov; int /*<<< orphan*/ * iov_base; } ;
struct iovec {int iov_len; int msg_iovlen; size_t msg_controllen; int /*<<< orphan*/ * msg_control; struct iovec* msg_iov; int /*<<< orphan*/ * iov_base; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; int cmsg_len; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  iov ;
typedef  int /*<<< orphan*/  dummy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct cmsghdr* FUNC3 (struct msghdr*,struct cmsghdr*) ; 
 size_t FUNC4 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ SCM_RIGHTS ; 
 scalar_t__ SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct msghdr*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int,struct msghdr*) ; 

__attribute__((used)) static int
FUNC13(int sock, int *fds, size_t nfds)
{
	struct msghdr msg;
	struct cmsghdr *cmsg;
	unsigned int i;
	int serrno, ret;
	struct iovec iov;
	uint8_t dummy;

	FUNC5(sock >= 0);
	FUNC5(nfds > 0);
	FUNC5(fds != NULL);

	FUNC7(&msg, sizeof(msg));
	FUNC7(&iov, sizeof(iov));

	/*
	 * XXX: Look into cred_send function for more details.
	 */
	iov.iov_base = &dummy;
	iov.iov_len = sizeof(dummy);

	msg.msg_iov = &iov;
	msg.msg_iovlen = 1;
	msg.msg_controllen = nfds * FUNC4(sizeof(int));
	msg.msg_control = FUNC8(1, msg.msg_controllen);
	if (msg.msg_control == NULL)
		return (-1);

	ret = -1;

	if (FUNC12(sock, &msg) == -1)
		goto end;

	i = 0;
	cmsg = FUNC1(&msg);
	while (cmsg && i < nfds) {
		unsigned int n;

		if (cmsg->cmsg_level != SOL_SOCKET ||
		    cmsg->cmsg_type != SCM_RIGHTS) {
			errno = EINVAL;
			break;
		}
		n = (cmsg->cmsg_len - FUNC2(0)) / sizeof(int);
		if (i + n > nfds) {
			errno = EINVAL;
			break;
		}
		FUNC6(FUNC0(cmsg), fds + i, sizeof(int) * n);
		cmsg = FUNC3(&msg, cmsg);
		i += n;
	}

	if (cmsg != NULL || i < nfds) {
		unsigned int last;

		/*
		 * We need to close all received descriptors, even if we have
		 * different control message (eg. SCM_CREDS) in between.
		 */
		last = i;
		for (i = 0; i < last; i++) {
			if (fds[i] >= 0) {
				FUNC9(fds[i]);
			}
		}
		errno = EINVAL;
		goto end;
	}

#ifndef MSG_CMSG_CLOEXEC
	/*
	 * If the MSG_CMSG_CLOEXEC flag is not available we cannot set the
	 * close-on-exec flag atomically, but we still want to set it for
	 * consistency.
	 */
	for (i = 0; i < nfds; i++) {
		(void) FUNC10(fds[i], F_SETFD, FD_CLOEXEC);
	}
#endif

	ret = 0;
end:
	serrno = errno;
	FUNC11(msg.msg_control);
	errno = serrno;
	return (ret);
}