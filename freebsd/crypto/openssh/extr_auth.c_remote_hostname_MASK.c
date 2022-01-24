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
struct sockaddr_storage {scalar_t__ ss_family; scalar_t__ ai_family; int ai_addrlen; struct sockaddr* ai_addr; struct sockaddr_storage* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_flags; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ss_family; scalar_t__ ai_family; int ai_addrlen; struct sockaddr* ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_flags; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  ntop2 ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  from ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NAMEREQD ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_storage*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,struct sockaddr_storage*,struct sockaddr_storage**) ; 
 scalar_t__ FUNC4 (struct sockaddr*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_storage*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ssh*) ; 
 char* FUNC11 (struct ssh*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 char* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC15(struct ssh *ssh)
{
	struct sockaddr_storage from;
	socklen_t fromlen;
	struct addrinfo hints, *ai, *aitop;
	char name[NI_MAXHOST], ntop2[NI_MAXHOST];
	const char *ntop = FUNC11(ssh);

	/* Get IP address of client. */
	fromlen = sizeof(from);
	FUNC9(&from, 0, sizeof(from));
	if (FUNC5(FUNC10(ssh),
	    (struct sockaddr *)&from, &fromlen) < 0) {
		FUNC0("getpeername failed: %.100s", FUNC14(errno));
		return FUNC13(ntop);
	}

	FUNC6(&from, &fromlen);
	if (from.ss_family == AF_INET6)
		fromlen = sizeof(struct sockaddr_in6);

	FUNC1("Trying to reverse map address %.100s.", ntop);
	/* Map the IP address to a host name. */
	if (FUNC4((struct sockaddr *)&from, fromlen, name, sizeof(name),
	    NULL, 0, NI_NAMEREQD) != 0) {
		/* Host name not found.  Use ip address. */
		return FUNC13(ntop);
	}

	/*
	 * if reverse lookup result looks like a numeric hostname,
	 * someone is trying to trick us by PTR record like following:
	 *	1.1.1.10.in-addr.arpa.	IN PTR	2.3.4.5
	 */
	FUNC9(&hints, 0, sizeof(hints));
	hints.ai_socktype = SOCK_DGRAM;	/*dummy*/
	hints.ai_flags = AI_NUMERICHOST;
	if (FUNC3(name, NULL, &hints, &ai) == 0) {
		FUNC7("Nasty PTR record \"%s\" is set up for %s, ignoring",
		    name, ntop);
		FUNC2(ai);
		return FUNC13(ntop);
	}

	/* Names are stored in lowercase. */
	FUNC8(name);

	/*
	 * Map it back to an IP address and check that the given
	 * address actually is an address of this host.  This is
	 * necessary because anyone with access to a name server can
	 * define arbitrary names for an IP address. Mapping from
	 * name to IP address can be trusted better (but can still be
	 * fooled if the intruder has access to the name server of
	 * the domain).
	 */
	FUNC9(&hints, 0, sizeof(hints));
	hints.ai_family = from.ss_family;
	hints.ai_socktype = SOCK_STREAM;
	if (FUNC3(name, NULL, &hints, &aitop) != 0) {
		FUNC7("reverse mapping checking getaddrinfo for %.700s "
		    "[%s] failed.", name, ntop);
		return FUNC13(ntop);
	}
	/* Look for the address from the list of addresses. */
	for (ai = aitop; ai; ai = ai->ai_next) {
		if (FUNC4(ai->ai_addr, ai->ai_addrlen, ntop2,
		    sizeof(ntop2), NULL, 0, NI_NUMERICHOST) == 0 &&
		    (FUNC12(ntop, ntop2) == 0))
				break;
	}
	FUNC2(aitop);
	/* If we reached the end of the list, the address was not there. */
	if (ai == NULL) {
		/* Address not found for the host name. */
		FUNC7("Address %.100s maps to %.600s, but this does not "
		    "map back to the address.", ntop, name);
		return FUNC13(ntop);
	}
	return FUNC13(name);
}