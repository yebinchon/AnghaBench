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
struct sockaddr_in6 {int sin6_len; scalar_t__ sin6_family; int /*<<< orphan*/  sin6_addr; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; scalar_t__ ai_family; } ;

/* Variables and functions */
 int ADDR ; 
 scalar_t__ AF_INET6 ; 
 int MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sockaddr_in6*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int explicit_prefix ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 int newaddr ; 
 struct sockaddr_in6** sin6tab ; 
 char* FUNC7 (char const*,char) ; 

__attribute__((used)) static void
FUNC8(const char *s, int which)
{
	struct sockaddr_in6 *sin = sin6tab[which];
	struct addrinfo hints, *res;
	int error = -1;

	newaddr &= 1;

	sin->sin6_len = sizeof(*sin);
	if (which != MASK)
		sin->sin6_family = AF_INET6;

	if (which == ADDR) {
		char *p = NULL;
		if((p = FUNC7(s, '/')) != NULL) {
			*p = '\0';
			FUNC5(p + 1, MASK);
			explicit_prefix = 1;
		}
	}

	if (sin->sin6_family == AF_INET6) {
		FUNC1(&hints, sizeof(struct addrinfo));
		hints.ai_family = AF_INET6;
		error = FUNC4(s, NULL, &hints, &res);
		if (error != 0) {
			if (FUNC6(AF_INET6, s, &sin->sin6_addr) != 1)
				FUNC2(1, "%s: bad value", s);
		} else {
			FUNC0(res->ai_addr, sin, res->ai_addrlen);
			FUNC3(res);
		}
	}
}