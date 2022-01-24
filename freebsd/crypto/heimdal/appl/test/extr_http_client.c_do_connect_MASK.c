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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; scalar_t__ ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

__attribute__((used)) static int
FUNC9 (const char *hostname, const char *port)
{
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    int s = -1;

    FUNC6 (&hints, 0, sizeof(hints));
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = 0;

    error = FUNC5 (hostname, port, &hints, &ai);
    if (error)
	FUNC2 (1, "getaddrinfo(%s): %s", hostname, FUNC4(error));

    for (a = ai; a != NULL; a = a->ai_next) {
	s = FUNC7 (a->ai_family, a->ai_socktype, a->ai_protocol);
	if (s < 0)
	    continue;
	if (FUNC1 (s, a->ai_addr, a->ai_addrlen) < 0) {
	    FUNC8 ("connect(%s)", hostname);
 	    FUNC0 (s);
 	    continue;
	}
	break;
    }
    FUNC3 (ai);
    if (a == NULL)
	FUNC2 (1, "failed to contact %s", hostname);

    return s;
}