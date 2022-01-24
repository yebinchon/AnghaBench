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
struct msghdr {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_len; scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 scalar_t__ FUNC1 (struct msghdr*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct msghdr*,struct cmsghdr*) ; 
 scalar_t__ IPPROTO_IPV6 ; 
 scalar_t__ IPV6_HOPLIMIT ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct msghdr *mhdr)
{
	struct cmsghdr *cm;

	for (cm = (struct cmsghdr *)FUNC1(mhdr); cm;
	     cm = (struct cmsghdr *)FUNC3(mhdr, cm)) {
		if (cm->cmsg_len == 0)
			return(-1);

		if (cm->cmsg_level == IPPROTO_IPV6 &&
		    cm->cmsg_type == IPV6_HOPLIMIT &&
		    cm->cmsg_len == FUNC2(sizeof(int))) {
			int r;

			FUNC4(&r, FUNC0(cm), sizeof(r));
			return(r);
		}
	}

	return(-1);
}