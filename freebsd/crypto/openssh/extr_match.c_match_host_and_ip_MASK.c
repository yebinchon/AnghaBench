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

/* Variables and functions */
 int FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*,char const*) ; 

int
FUNC2(const char *host, const char *ipaddr,
    const char *patterns)
{
	int mhost, mip;

	if ((mip = FUNC0(ipaddr, patterns)) == -2)
		return -1; /* error in ipaddr match */
	else if (host == NULL || ipaddr == NULL || mip == -1)
		return 0; /* negative ip address match, or testing pattern */

	/* negative hostname match */
	if ((mhost = FUNC1(host, patterns)) == -1)
		return 0;
	/* no match at all */
	if (mhost == 0 && mip == 0)
		return 0;
	return 1;
}