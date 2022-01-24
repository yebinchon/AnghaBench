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
struct addrinfo {int ai_flags; int ai_family; int ai_socktype; int ai_protocol; int ai_addrlen; char* ai_canonname; struct addrinfo* ai_next; int /*<<< orphan*/ * ai_addr; } ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,...) ; 

void
FUNC1(struct addrinfo *ai, char *buffer, size_t buflen)
{
	int written, i;

	written = FUNC0(buffer, buflen, "%d %d %d %d %d ",
		ai->ai_flags, ai->ai_family, ai->ai_socktype, ai->ai_protocol,
		ai->ai_addrlen);
	buffer += written;
	if (written > (int)buflen)
		return;
	buflen -= written;

	written = FUNC0(buffer, buflen, "%s ",
		ai->ai_canonname == NULL ? "(null)" : ai->ai_canonname);
	buffer += written;
	if (written > (int)buflen)
		return;
	buflen -= written;

	if (ai->ai_addr == NULL) {
		written = FUNC0(buffer, buflen, "(null)");
		buffer += written;
		if (written > (int)buflen)
			return;
		buflen -= written;
	} else {
		for (i = 0; i < (int)ai->ai_addrlen; i++) {
			written = FUNC0(buffer, buflen,
			    i + 1 != (int)ai->ai_addrlen ? "%d." : "%d",
			    ((unsigned char *)ai->ai_addr)[i]);
			buffer += written;
			if (written > (int)buflen)
				return;
			buflen -= written;

			if (buflen == 0)
				return;
		}
	}

	if (ai->ai_next != NULL) {
		written = FUNC0(buffer, buflen, ":");
		buffer += written;
		if (written > (int)buflen)
			return;
		buflen -= written;

		FUNC1(ai->ai_next, buffer, buflen);
	}
}