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
struct msghdr {void* msg_control; } ;
struct cmsghdr {scalar_t__ cmsg_level; int cmsg_type; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 scalar_t__ FUNC1 (struct msghdr*) ; 
 scalar_t__ FUNC2 (struct msghdr*,struct cmsghdr*) ; 
 scalar_t__ CONTROLLEN ; 
 scalar_t__ IPPROTO_IPV6 ; 
#define  IPV6_DSTOPTS 131 
#define  IPV6_HOPOPTS 130 
#define  IPV6_RTHDR 129 
#define  IPV6_RTHDRDSTOPTS 128 
 int /*<<< orphan*/  FUNC3 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(struct msghdr *mhdr)
{
	ssize_t	bufsize;
	void	*bufp;
	struct cmsghdr *cm;

	bufsize = 0;
	bufp = mhdr->msg_control;
	for (cm = (struct cmsghdr *)FUNC1(mhdr); cm;
	     cm = (struct cmsghdr *)FUNC2(mhdr, cm)) {
		if (cm->cmsg_level != IPPROTO_IPV6)
			continue;

		bufsize = CONTROLLEN - ((caddr_t)FUNC0(cm) - (caddr_t)bufp);
		if (bufsize <= 0)
			continue;
		switch (cm->cmsg_type) {
		case IPV6_HOPOPTS:
			FUNC5("  HbH Options: ");
			FUNC3(FUNC0(cm), (size_t)bufsize);
			break;
		case IPV6_DSTOPTS:
#ifdef IPV6_RTHDRDSTOPTS
		case IPV6_RTHDRDSTOPTS:
#endif
			FUNC5("  Dst Options: ");
			FUNC3(FUNC0(cm), (size_t)bufsize);
			break;
		case IPV6_RTHDR:
			FUNC5("  Routing: ");
			FUNC4(FUNC0(cm), (size_t)bufsize);
			break;
		}
	}
}