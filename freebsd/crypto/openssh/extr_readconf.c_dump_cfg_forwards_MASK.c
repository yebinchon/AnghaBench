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
typedef  size_t u_int ;
struct Forward {char* connect_host; scalar_t__ listen_port; char* listen_path; char* listen_host; scalar_t__ connect_port; char* connect_path; } ;
typedef  scalar_t__ OpCodes ;

/* Variables and functions */
 scalar_t__ PORT_STREAMLOCAL ; 
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ oDynamicForward ; 
 scalar_t__ oLocalForward ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3(OpCodes code, u_int count, const struct Forward *fwds)
{
	const struct Forward *fwd;
	u_int i;

	/* oDynamicForward */
	for (i = 0; i < count; i++) {
		fwd = &fwds[i];
		if (code == oDynamicForward && fwd->connect_host != NULL &&
		    FUNC2(fwd->connect_host, "socks") != 0)
			continue;
		if (code == oLocalForward && fwd->connect_host != NULL &&
		    FUNC2(fwd->connect_host, "socks") == 0)
			continue;
		FUNC1("%s", FUNC0(code));
		if (fwd->listen_port == PORT_STREAMLOCAL)
			FUNC1(" %s", fwd->listen_path);
		else if (fwd->listen_host == NULL)
			FUNC1(" %d", fwd->listen_port);
		else {
			FUNC1(" [%s]:%d",
			    fwd->listen_host, fwd->listen_port);
		}
		if (code != oDynamicForward) {
			if (fwd->connect_port == PORT_STREAMLOCAL)
				FUNC1(" %s", fwd->connect_path);
			else if (fwd->connect_host == NULL)
				FUNC1(" %d", fwd->connect_port);
			else {
				FUNC1(" [%s]:%d",
				    fwd->connect_host, fwd->connect_port);
			}
		}
		FUNC1("\n");
	}
}