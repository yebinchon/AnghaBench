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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_char ;
struct addrinfo {int ai_family; int /*<<< orphan*/  s_addr; int /*<<< orphan*/  ai_flags; } ;
struct pf_addr {struct addrinfo v6; struct addrinfo v4; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,int) ; 
 char* FUNC7 (char*,char) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ,int,char const**) ; 

void
FUNC9(char *addr, struct pf_addr *mask)
{
	char *p;
	const char *errstr;
	int prefix, ret_ga, q, r;
	struct addrinfo hints, *res;

	if ((p = FUNC7(addr, '/')) == NULL)
		return;

	*p++ = '\0';
	prefix = FUNC8(p, 0, 128, &errstr);
	if (errstr)
		FUNC1(1, "prefix is %s: %s", errstr, p);

	FUNC0(&hints, sizeof(hints));
	/* prefix only with numeric addresses */
	hints.ai_flags |= AI_NUMERICHOST;

	if ((ret_ga = FUNC4(addr, NULL, &hints, &res))) {
		FUNC1(1, "getaddrinfo: %s", FUNC3(ret_ga));
		/* NOTREACHED */
	}

	if (res->ai_family == AF_INET && prefix > 32)
		FUNC1(1, "prefix too long for AF_INET");
	else if (res->ai_family == AF_INET6 && prefix > 128)
		FUNC1(1, "prefix too long for AF_INET6");

	q = prefix >> 3;
	r = prefix & 7;
	switch (res->ai_family) {
	case AF_INET:
		FUNC0(&mask->v4, sizeof(mask->v4));
		mask->v4.s_addr = FUNC5((u_int32_t)
		    (0xffffffffffULL << (32 - prefix)));
		break;
	case AF_INET6:
		FUNC0(&mask->v6, sizeof(mask->v6));
		if (q > 0)
			FUNC6((void *)&mask->v6, 0xff, q);
		if (r > 0)
			*((u_char *)&mask->v6 + q) =
			    (0xff00 >> r) & 0xff;
		break;
	}
	FUNC2(res);
}