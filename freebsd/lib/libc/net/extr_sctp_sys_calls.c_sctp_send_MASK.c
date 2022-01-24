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
struct sockaddr {int dummy; } ;
struct sctp_sndrcvinfo {int dummy; } ;
struct msghdr {int msg_iovlen; char* msg_control; int msg_controllen; scalar_t__ msg_flags; struct iovec* msg_iov; scalar_t__ msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct iovec {char* iov_base; size_t iov_len; } ;
struct cmsghdr {int /*<<< orphan*/  cmsg_len; int /*<<< orphan*/  cmsg_type; int /*<<< orphan*/  cmsg_level; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 int /*<<< orphan*/  SCTP_SNDRCV ; 
 int /*<<< orphan*/  SYS_sctp_generic_sendmsg ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sctp_sndrcvinfo const*,int) ; 
 int FUNC4 (int,struct msghdr*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,void const*,size_t,struct sockaddr*,int /*<<< orphan*/ ,struct sctp_sndrcvinfo const*,int) ; 

ssize_t
FUNC6(int sd, const void *data, size_t len,
    const struct sctp_sndrcvinfo *sinfo,
    int flags)
{

#ifdef SYS_sctp_generic_sendmsg
	struct sockaddr *to = NULL;

	return (syscall(SYS_sctp_generic_sendmsg, sd,
	    data, len, to, 0, sinfo, flags));
#else
	struct msghdr msg;
	struct iovec iov;
	char cmsgbuf[FUNC2(sizeof(struct sctp_sndrcvinfo))];
	struct cmsghdr *cmsg;

	if (sinfo == NULL) {
		errno = EINVAL;
		return (-1);
	}
	iov.iov_base = (char *)data;
	iov.iov_len = len;

	msg.msg_name = NULL;
	msg.msg_namelen = 0;
	msg.msg_iov = &iov;
	msg.msg_iovlen = 1;
	msg.msg_control = cmsgbuf;
	msg.msg_controllen = FUNC2(sizeof(struct sctp_sndrcvinfo));
	msg.msg_flags = 0;
	cmsg = (struct cmsghdr *)cmsgbuf;
	cmsg->cmsg_level = IPPROTO_SCTP;
	cmsg->cmsg_type = SCTP_SNDRCV;
	cmsg->cmsg_len = FUNC1(sizeof(struct sctp_sndrcvinfo));
	FUNC3(FUNC0(cmsg), sinfo, sizeof(struct sctp_sndrcvinfo));
	return (FUNC4(sd, &msg, flags));
#endif
}