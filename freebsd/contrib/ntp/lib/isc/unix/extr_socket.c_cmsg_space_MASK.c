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
struct msghdr {char* msg_control; int msg_controllen; } ;
struct cmsghdr {int /*<<< orphan*/  cmsg_len; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  dummybuf ;
typedef  int ISC_SOCKADDR_LEN_T ;

/* Variables and functions */
 struct cmsghdr* FUNC0 (struct msghdr*,struct cmsghdr*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct msghdr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline ISC_SOCKADDR_LEN_T
FUNC4(ISC_SOCKADDR_LEN_T len) {
#ifdef CMSG_SPACE
	return (CMSG_SPACE(len));
#else
	struct msghdr msg;
	struct cmsghdr *cmsgp;
	/*
	 * XXX: The buffer length is an ad-hoc value, but should be enough
	 * in a practical sense.
	 */
	char dummybuf[sizeof(struct cmsghdr) + 1024];

	FUNC3(&msg, 0, sizeof(msg));
	msg.msg_control = dummybuf;
	msg.msg_controllen = sizeof(dummybuf);

	cmsgp = (struct cmsghdr *)dummybuf;
	cmsgp->cmsg_len = FUNC2(len);

	cmsgp = FUNC0(&msg, cmsgp);
	if (cmsgp != NULL)
		return ((char *)cmsgp - (char *)msg.msg_control);
	else
		return (0);
#endif
}