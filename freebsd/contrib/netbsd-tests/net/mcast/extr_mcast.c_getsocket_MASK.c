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
struct addrinfo {struct sockaddr const* ai_addr; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC1 (int,struct addrinfo*,int) ; 
 int FUNC2 (int,struct addrinfo*) ; 
 int FUNC3 (int,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int,struct sockaddr const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(const char *host, const char *port,
    int (*f)(int, const struct sockaddr *, socklen_t), socklen_t *slen,
    bool bug)
{
	int e, s, lasterrno = 0;
	struct addrinfo hints, *ai0, *ai;
	const char *cause = "?";

	FUNC9(&hints, 0, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_DGRAM;
	e = FUNC8(host, port, &hints, &ai0);
	if (e)
		FUNC0(EXIT_FAILURE, "Can't resolve %s:%s (%s)", host, port,
		    FUNC7(e));

	s = -1;
	for (ai = ai0; ai; ai = ai->ai_next) {
		s = FUNC10(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
		if (s == -1) {
			lasterrno = errno;
			cause = "socket";
			continue;
		}
		if (FUNC2(s, ai) == -1) {
			cause = "allow v4 mapped";
			goto out;
		}
		if ((*f)(s, ai->ai_addr, ai->ai_addrlen) == -1) {
			cause = f == bind ? "bind" : "connect";
			goto out;
		}
		if ((f == bind || f == connector) && FUNC1(s, ai, bug) == -1) {
			cause = "join group";
			goto out;
		}
		*slen = ai->ai_addrlen;
		break;
out:
		lasterrno = errno;
		FUNC4(s);
		s = -1;
		continue;
	}
	FUNC6(ai0);
	if (s == -1)
		FUNC0(EXIT_FAILURE, "%s (%s)", cause, FUNC11(lasterrno));
	return s;
}