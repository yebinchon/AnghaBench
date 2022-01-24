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
struct permission_set {scalar_t__ all_permitted; } ;

/* Variables and functions */
 int FORWARD_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,int,int,char*,int,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct permission_set* FUNC3 (struct ssh*,int) ; 

void
FUNC4(struct ssh *ssh, int who, int where,
    char *host, int port)
{
	int local = where == FORWARD_LOCAL;
	struct permission_set *pset = FUNC3(ssh, where);

	FUNC0("allow %s forwarding to host %s port %d",
	    FUNC1(who, where), host, port);
	/*
	 * Remote forwards set listen_host/port, local forwards set
	 * host/port_to_connect.
	 */
	FUNC2(ssh, who, where,
	    local ? host : 0, local ? port : 0,
	    local ? NULL : host, NULL, local ? 0 : port, NULL);
	pset->all_permitted = 0;
}