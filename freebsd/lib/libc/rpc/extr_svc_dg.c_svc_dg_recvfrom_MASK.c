#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; scalar_t__ sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct msghdr {int msg_iovlen; int msg_namelen; char* msg_name; int msg_controllen; int msg_flags; scalar_t__ msg_control; struct iovec* msg_iov; } ;
struct iovec {char* iov_base; int iov_len; } ;
struct in_addr {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 int FUNC2 (int) ; 
 struct cmsghdr* FUNC3 (struct msghdr*,struct cmsghdr*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 scalar_t__ IPPROTO_IP ; 
 scalar_t__ IP_RECVDSTADDR ; 
 int MSG_CTRUNC ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC4 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(int fd, char *buf, int buflen,
    struct sockaddr *raddr, socklen_t *raddrlen,
    struct sockaddr *laddr, socklen_t *laddrlen)
{
	struct msghdr msg;
	struct iovec msg_iov[1];
	struct sockaddr_in *lin = (struct sockaddr_in *)laddr;
	int rlen;
	bool_t have_lin = FALSE;
	char tmp[FUNC2(sizeof(*lin))];
	struct cmsghdr *cmsg;

	FUNC6((char *)&msg, 0, sizeof(msg));
	msg_iov[0].iov_base = buf;
	msg_iov[0].iov_len = buflen;
	msg.msg_iov = msg_iov;
	msg.msg_iovlen = 1;
	msg.msg_namelen = *raddrlen;
	msg.msg_name = (char *)raddr;
	if (laddr != NULL) {
	    msg.msg_control = (caddr_t)tmp;
	    msg.msg_controllen = FUNC2(sizeof(*lin));
	}
	rlen = FUNC4(fd, &msg, 0);
	if (rlen >= 0)
		*raddrlen = msg.msg_namelen;

	if (rlen == -1 || laddr == NULL ||
	    msg.msg_controllen < sizeof(struct cmsghdr) ||
	    msg.msg_flags & MSG_CTRUNC)
		return rlen;

	for (cmsg = FUNC1(&msg); cmsg != NULL;
	     cmsg = FUNC3(&msg, cmsg)) {
		if (cmsg->cmsg_level == IPPROTO_IP &&
		    cmsg->cmsg_type == IP_RECVDSTADDR) {
			have_lin = TRUE;
			FUNC5(&lin->sin_addr,
			    (struct in_addr *)FUNC0(cmsg),
			    sizeof(struct in_addr));
			break;
		}
	}

	lin->sin_family = AF_INET;
	lin->sin_port = 0;
	*laddrlen = sizeof(struct sockaddr_in);

	if (!have_lin)
		lin->sin_addr.s_addr = INADDR_ANY;

	return rlen;
}