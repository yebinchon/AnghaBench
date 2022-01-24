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
struct evutil_addrinfo {int ai_flags; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  strport ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EVUTIL_AI_ADDRCONFIG ; 
 int EVUTIL_AI_PASSIVE ; 
 int EVUTIL_EAI_SYSTEM ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,char*,struct evutil_addrinfo*,struct evutil_addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct evutil_addrinfo*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct evutil_addrinfo *
FUNC6(const char *address, ev_uint16_t port)
{
	struct evutil_addrinfo *ai = NULL;

	struct evutil_addrinfo hints;
	char strport[NI_MAXSERV];
	int ai_result;

	FUNC5(&hints, 0, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	/* turn NULL hostname into INADDR_ANY, and skip looking up any address
	 * types we don't have an interface to connect to. */
	hints.ai_flags = EVUTIL_AI_PASSIVE|EVUTIL_AI_ADDRCONFIG;
	FUNC4(strport, sizeof(strport), "%d", port);
	if ((ai_result = FUNC3(address, strport, &hints, &ai))
	    != 0) {
		if (ai_result == EVUTIL_EAI_SYSTEM)
			FUNC0("getaddrinfo");
		else
			FUNC1("getaddrinfo: %s",
			    FUNC2(ai_result));
		return (NULL);
	}

	return (ai);
}