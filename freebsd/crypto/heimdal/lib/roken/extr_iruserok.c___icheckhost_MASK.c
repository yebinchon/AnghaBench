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
typedef  unsigned int u_long ;
struct hostent {char** h_addr_list; } ;

/* Variables and functions */
 struct hostent* FUNC0 (char const*) ; 
 unsigned int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (unsigned int*,char*,int) ; 

__attribute__((used)) static
int
FUNC4(unsigned raddr, const char *lhost)
{
	struct hostent *hp;
	u_long laddr;
	char **pp;

	/* Try for raw ip address first. */
	if (FUNC2((unsigned char)*lhost)
	    && (long)(laddr = FUNC1(lhost)) != -1)
		return (raddr == laddr);

	/* Better be a hostname. */
	if ((hp = FUNC0(lhost)) == NULL)
		return (0);

	/* Spin through ip addresses. */
	for (pp = hp->h_addr_list; *pp; ++pp)
	        if (FUNC3(&raddr, *pp, sizeof(u_long)) == 0)
			return (1);

	/* No match. */
	return (0);
}