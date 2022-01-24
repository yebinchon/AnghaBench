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
typedef  int /*<<< orphan*/  nodelay ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*) ; 

__attribute__((used)) static int
FUNC14 (const char *hostname, int port, int nodelay)
{
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    int s = -1;
    char portstr[NI_MAXSERV];

    FUNC7 (&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;

    FUNC10 (portstr, sizeof(portstr), "%u", FUNC8(port));

    error = FUNC6 (hostname, portstr, &hints, &ai);
    if (error)
	FUNC3 (1, "getaddrinfo(%s): %s", hostname, FUNC5(error));

    for (a = ai; a != NULL; a = a->ai_next) {
	s = FUNC11 (a->ai_family, a->ai_socktype, a->ai_protocol);
	if (s < 0)
	    continue;
	if (FUNC1 (s, a->ai_addr, a->ai_addrlen) < 0) {
	    FUNC12 ("connect(%s)", hostname);
 	    FUNC0 (s);
 	    continue;
	}
	break;
    }
    FUNC4 (ai);
    if (a == NULL) {
	FUNC13 ("failed to contact %s", hostname);
	return -1;
    }

    if(FUNC9(s, IPPROTO_TCP, TCP_NODELAY,
		  (void *)&nodelay, sizeof(nodelay)) < 0)
	FUNC2 (1, "setsockopt TCP_NODELAY");
    return s;
}