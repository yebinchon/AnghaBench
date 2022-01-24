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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  portstr ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 

int
FUNC13 (const char *hostname, int port, const char *service,
	     int (*func)(int, const char *hostname, const char *service))
{
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    char portstr[NI_MAXSERV];

    FUNC6 (&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;

    FUNC8 (portstr, sizeof(portstr), "%u", FUNC7(port));

    error = FUNC5 (hostname, portstr, &hints, &ai);
    if (error) {
	FUNC2 (1, "%s: %s", hostname, FUNC4(error));
	return -1;
    }

    for (a = ai; a != NULL; a = a->ai_next) {
	int s;

	s = FUNC9 (a->ai_family, a->ai_socktype, a->ai_protocol);
	if (s < 0)
	    continue;
	if (FUNC1 (s, a->ai_addr, a->ai_addrlen) < 0) {
	    FUNC11 ("connect(%s)", hostname);
	    FUNC0 (s);
	    continue;
	}
	FUNC3 (ai);
	return (*func) (s, hostname, service);
    }
    FUNC12 ("failed to contact %s", hostname);
    FUNC3 (ai);
    return 1;
}