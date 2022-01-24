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
struct rpcent {char* r_name; int r_number; char** r_aliases; } ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,...) ; 

__attribute__((used)) static void
FUNC1(struct rpcent *rpc, char *buffer, size_t buflen)
{
	char **cp;
	int written;

	written = FUNC0(buffer, buflen, "%s %d",
		rpc->r_name, rpc->r_number);
	buffer += written;
	if (written > (int)buflen)
		return;
	buflen -= written;

	if (rpc->r_aliases != NULL) {
		if (*(rpc->r_aliases) != NULL) {
			for (cp = rpc->r_aliases; *cp; ++cp) {
				written = FUNC0(buffer, buflen, " %s", *cp);
				buffer += written;
				if (written > (int)buflen)
					return;
				buflen -= written;

				if (buflen == 0)
					return;
			}
		} else
			FUNC0(buffer, buflen, " noaliases");
	} else
		FUNC0(buffer, buflen, " (null)");
}