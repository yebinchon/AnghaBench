#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int NI_MAXSERV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ options ; 
 char* FUNC1 (char*,char*,char const*,char*,char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,char const*) ; 

__attribute__((used)) static char *
FUNC4(const char *proxy_command, const char *user,
    const char *host, int port)
{
	char *tmp, *ret, strport[NI_MAXSERV];

	FUNC2(strport, sizeof strport, "%d", port);
	FUNC3(&tmp, "exec %s", proxy_command);
	ret = FUNC1(tmp, "h", host, "p", strport,
	    "r", options.user, (char *)NULL);
	FUNC0(tmp);
	return ret;
}