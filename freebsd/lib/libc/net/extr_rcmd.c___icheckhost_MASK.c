#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ ai_family; int ai_addrlen; struct sockaddr const* ai_addr; struct sockaddr_in* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct addrinfo {int sin_len; scalar_t__ ai_family; int ai_addrlen; struct sockaddr const* ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  h2 ;
typedef  int /*<<< orphan*/  h1 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*) ; 
 int FUNC2 (char const*,char*,struct sockaddr_in*,struct sockaddr_in**) ; 
 scalar_t__ FUNC3 (struct sockaddr const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static int
FUNC7(const struct sockaddr *raddr, socklen_t salen, const char *lhost)
{
	struct sockaddr_in sin;
	struct sockaddr_in6 *sin6;
	struct addrinfo hints, *res, *r;
	int error;
	char h1[NI_MAXHOST], h2[NI_MAXHOST];

	if (raddr->sa_family == AF_INET6) {
		sin6 = (struct sockaddr_in6 *)raddr;
		if (FUNC0(&sin6->sin6_addr)) {
			FUNC5(&sin, 0, sizeof(sin));
			sin.sin_family = AF_INET;
			sin.sin_len = sizeof(struct sockaddr_in);
			FUNC4(&sin.sin_addr, &sin6->sin6_addr.s6_addr[12],
			       sizeof(sin.sin_addr));
			raddr = (struct sockaddr *)&sin;
			salen = sin.sin_len;
		}
	}

	h1[0] = '\0';
	if (FUNC3(raddr, salen, h1, sizeof(h1), NULL, 0,
			NI_NUMERICHOST) != 0)
		return (0);

	/* Resolve laddr into sockaddr */
	FUNC5(&hints, 0, sizeof(hints));
	hints.ai_family = raddr->sa_family;
	hints.ai_socktype = SOCK_DGRAM;	/*XXX dummy*/
	res = NULL;
	error = FUNC2(lhost, "0", &hints, &res);
	if (error)
		return (0);

	for (r = res; r ; r = r->ai_next) {
		h2[0] = '\0';
		if (FUNC3(r->ai_addr, r->ai_addrlen, h2, sizeof(h2),
				NULL, 0, NI_NUMERICHOST) != 0)
			continue;
		if (FUNC6(h1, h2) == 0) {
			FUNC1(res);
			return (1);
		}
	}

	/* No match. */
	FUNC1(res);
	return (0);
}