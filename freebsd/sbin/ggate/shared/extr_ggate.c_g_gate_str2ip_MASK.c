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
struct in_addr {scalar_t__ s_addr; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef  scalar_t__ in_addr_t ;

/* Variables and functions */
 scalar_t__ INADDR_NONE ; 
 struct hostent* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 

in_addr_t
FUNC2(const char *str)
{
	struct hostent *hp;
	in_addr_t ip;

	ip = FUNC1(str);
	if (ip != INADDR_NONE) {
		/* It is a valid IP address. */
		return (ip);
	}
	/* Check if it is a valid host name. */
	hp = FUNC0(str);
	if (hp == NULL)
		return (INADDR_NONE);
	return (((struct in_addr *)(void *)hp->h_addr)->s_addr);
}