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
struct cmsghdr {int cmsg_type; int /*<<< orphan*/  cmsg_len; int /*<<< orphan*/  cmsg_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int
FUNC3(void *bp, struct cmsghdr **cmsgp, int type)
{
	struct cmsghdr *ch = (struct cmsghdr *)bp;

	/* argument validation */
	if (!FUNC2(type) && !FUNC1(type))
		return(-1);

	ch->cmsg_level = IPPROTO_IPV6;
	ch->cmsg_type = type;
	ch->cmsg_len = FUNC0(0);

	*cmsgp = ch;
	return(0);
}