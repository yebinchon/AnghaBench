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
typedef  scalar_t__ u_short ;

/* Variables and functions */
 scalar_t__ SSH_DEFAULT_PORT ; 
 scalar_t__ FUNC0 (char**,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*) ; 

char *
FUNC5(const char *host, u_short port)
{
	char *hoststr;

	if (port == 0 || port == SSH_DEFAULT_PORT)
		return(FUNC4(host));
	if (FUNC0(&hoststr, "[%s]:%d", host, (int)port) < 0)
		FUNC2("put_host_port: asprintf: %s", FUNC3(errno));
	FUNC1("put_host_port: %s", hoststr);
	return hoststr;
}