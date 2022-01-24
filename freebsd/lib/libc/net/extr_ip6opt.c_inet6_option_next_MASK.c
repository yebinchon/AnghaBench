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
typedef  int /*<<< orphan*/  u_int8_t ;
struct ip6_ext {int ip6e_len; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_len; int /*<<< orphan*/  cmsg_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr const*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ IPPROTO_IPV6 ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(const struct cmsghdr *cmsg, u_int8_t **tptrp)
{
	struct ip6_ext *ip6e;
	int hdrlen, optlen;
	u_int8_t *lim;

	if (cmsg->cmsg_level != IPPROTO_IPV6 ||
	    (!FUNC4(cmsg->cmsg_type) &&
	     !FUNC3(cmsg->cmsg_type)))
		return(-1);

	/* message length validation */
	if (cmsg->cmsg_len < FUNC1(sizeof(struct ip6_ext)))
		return(-1);
	ip6e = (struct ip6_ext *)FUNC0(cmsg);
	hdrlen = (ip6e->ip6e_len + 1) << 3;
	if (cmsg->cmsg_len < FUNC1(hdrlen))
		return(-1);

	/*
	 * If the caller does not specify the starting point,
	 * simply return the 1st option.
	 * Otherwise, search the option list for the next option.
	 */
	lim = (u_int8_t *)ip6e + hdrlen;
	if (*tptrp == NULL)
		*tptrp = (u_int8_t *)(ip6e + 1);
	else {
		if ((optlen = FUNC2(*tptrp, lim)) == 0)
			return(-1);

		*tptrp = *tptrp + optlen;
	}
	if (*tptrp >= lim) {	/* there is no option */
		*tptrp = NULL;
		return(-1);
	}
	/*
	 * Finally, checks if the next option is safely stored in the
	 * cmsg data.
	 */
	if (FUNC2(*tptrp, lim) == 0)
		return(-1);
	else
		return(0);
}