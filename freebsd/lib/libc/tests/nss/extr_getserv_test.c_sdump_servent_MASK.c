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
struct servent {char* s_name; char* s_proto; char** s_aliases; int /*<<< orphan*/  s_port; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,size_t,char*,...) ; 

__attribute__((used)) static void
FUNC2(struct servent *serv, char *buffer, size_t buflen)
{
	char **cp;
	int written;

	written = FUNC1(buffer, buflen, "%s %d %s",
		serv->s_name, FUNC0(serv->s_port), serv->s_proto);
	buffer += written;
	if (written > (int)buflen)
		return;
	buflen -= written;

	if (serv->s_aliases != NULL) {
		if (*(serv->s_aliases) != NULL) {
			for (cp = serv->s_aliases; *cp; ++cp) {
				written = FUNC1(buffer, buflen, " %s", *cp);
				buffer += written;
				if (written > (int)buflen)
					return;
				buflen -= written;

				if (buflen == 0)
					return;
			}
		} else
			FUNC1(buffer, buflen, " noaliases");
	} else
		FUNC1(buffer, buflen, " (null)");
}