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
typedef  scalar_t__ uint8_t ;
struct msghdr {int msg_iovlen; size_t msg_controllen; int /*<<< orphan*/ * msg_control; struct iovec* msg_iov; } ;
struct iovec {int iov_len; scalar_t__* iov_base; } ;
struct cmsghdr {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  dummy ;

/* Variables and functions */
 struct cmsghdr* FUNC0 (struct msghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*,struct cmsghdr*) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct msghdr*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int,size_t) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int,struct msghdr*) ; 
 int FUNC8 (struct cmsghdr*,int const) ; 

__attribute__((used)) static int
FUNC9(int sock, const int *fds, size_t nfds)
{
	struct msghdr msg;
	struct cmsghdr *cmsg;
	struct iovec iov;
	unsigned int i;
	int serrno, ret;
	uint8_t dummy;

	FUNC3(sock >= 0);
	FUNC3(fds != NULL);
	FUNC3(nfds > 0);

	FUNC4(&msg, sizeof(msg));

	/*
	 * XXX: Look into cred_send function for more details.
	 */
	dummy = 0;
	iov.iov_base = &dummy;
	iov.iov_len = sizeof(dummy);

	msg.msg_iov = &iov;
	msg.msg_iovlen = 1;
	msg.msg_controllen = nfds * FUNC2(sizeof(int));
	msg.msg_control = FUNC5(1, msg.msg_controllen);
	if (msg.msg_control == NULL)
		return (-1);

	ret = -1;

	for (i = 0, cmsg = FUNC0(&msg); i < nfds && cmsg != NULL;
	    i++, cmsg = FUNC1(&msg, cmsg)) {
		if (FUNC8(cmsg, fds[i]) == -1)
			goto end;
	}

	if (FUNC7(sock, &msg) == -1)
		goto end;

	ret = 0;
end:
	serrno = errno;
	FUNC6(msg.msg_control);
	errno = serrno;
	return (ret);
}