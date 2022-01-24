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
struct ssh {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct ssh*) ; 
 char const* FUNC1 (struct ssh*) ; 

const char *
FUNC2(struct ssh *ssh, int use_dns)
{
	static char *dnsname;

	if (!use_dns)
		return FUNC1(ssh);
	else if (dnsname != NULL)
		return dnsname;
	else {
		dnsname = FUNC0(ssh);
		return dnsname;
	}
}