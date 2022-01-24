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
struct protoent {char* p_name; int p_proto; char** p_aliases; } ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,...) ; 

__attribute__((used)) static void
FUNC1(struct protoent *pe, char *buffer, size_t buflen)
{
	char **cp;
	int written;

	written = FUNC0(buffer, buflen, "%s %d",
		pe->p_name, pe->p_proto);
	buffer += written;
	if (written > (int)buflen)
		return;
	buflen -= written;

	if (pe->p_aliases != NULL) {
		if (*(pe->p_aliases) != NULL) {
			for (cp = pe->p_aliases; *cp; ++cp) {
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