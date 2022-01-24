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
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_family; } ;
typedef  scalar_t__ socklen_t ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(const char *h, const char *p, struct sockaddr *addr,
    socklen_t addrlen, int v4only, int numeric)
{
	int r;
	struct addrinfo hints, *res;

	FUNC0(&hints, sizeof(hints));
	hints.ai_family = v4only ? PF_INET : PF_UNSPEC;
	hints.ai_flags = numeric ? AI_NUMERICHOST : 0;
	hints.ai_socktype = SOCK_STREAM;
	r = FUNC4(h, p, &hints, &res);
	/* Don't fatal when attempting to convert a numeric address */
	if (r != 0) {
		if (!numeric) {
			FUNC1(1, "getaddrinfo(\"%.64s\", \"%.64s\"): %s", h, p,
			    FUNC3(r));
		}
		return (-1);
	}
	if (addrlen < res->ai_addrlen) {
		FUNC2(res);
		FUNC1(1, "internal error: addrlen < res->ai_addrlen");
	}
	FUNC5(addr, res->ai_addr, res->ai_addrlen);
	FUNC2(res);
	return (0);
}