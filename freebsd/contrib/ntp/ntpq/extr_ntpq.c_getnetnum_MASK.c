#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct addrinfo {int ai_addrlen; int /*<<< orphan*/ * ai_canonname; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  sa; } ;
typedef  TYPE_1__ sockaddr_u ;

/* Variables and functions */
 int /*<<< orphan*/  AI_ADDRCONFIG ; 
 int /*<<< orphan*/  AI_CANONNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LENHOSTNAME ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo) ; 
 scalar_t__ FUNC3 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 
 scalar_t__ FUNC6 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC10(
	const char *hname,
	sockaddr_u *num,
	char *fullhost,
	int af
	)
{
	struct addrinfo hints, *ai = NULL;

	FUNC2(hints);
	hints.ai_flags = AI_CANONNAME;
#ifdef AI_ADDRCONFIG
	hints.ai_flags |= AI_ADDRCONFIG;
#endif

	/*
	 * decodenetnum only works with addresses, but handles syntax
	 * that getaddrinfo doesn't:  [2001::1]:1234
	 */
	if (FUNC3(hname, num)) {
		if (fullhost != NULL)
			FUNC7(&num->sa, FUNC1(num), fullhost,
				    LENHOSTNAME, NULL, 0, 0);
		return 1;
	} else if (FUNC6(hname, "ntp", &hints, &ai) == 0) {
		FUNC0(sizeof(*num) >= ai->ai_addrlen);
		FUNC8(num, ai->ai_addr, ai->ai_addrlen);
		if (fullhost != NULL) {
			if (ai->ai_canonname != NULL)
				FUNC9(fullhost, ai->ai_canonname,
					LENHOSTNAME);
			else
				FUNC7(&num->sa, FUNC1(num),
					    fullhost, LENHOSTNAME, NULL,
					    0, 0);
		}
		FUNC5(ai);
		return 1;
	}
	FUNC4(stderr, "***Can't find host %s\n", hname);

	return 0;
}