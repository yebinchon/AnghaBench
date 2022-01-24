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
typedef  scalar_t__ u_int ;
struct ssh {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct ssh*,int) ; 
 char* FUNC1 (struct ssh*) ; 
 scalar_t__ FUNC2 (char const*) ; 

const char *
FUNC3(struct ssh *ssh, u_int utmp_size, int use_dns)
{
	const char *remote = "";

	if (utmp_size > 0)
		remote = FUNC0(ssh, use_dns);
	if (utmp_size == 0 || FUNC2(remote) > utmp_size)
		remote = FUNC1(ssh);
	return remote;
}