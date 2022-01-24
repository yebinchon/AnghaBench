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
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC9(krb5_context context, const char *hostname, const char *port)
{
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;

    FUNC5 (&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;

    error = FUNC4 (hostname, port, &hints, &ai);
    if (error) {
	FUNC8 ("%s: %s", hostname, FUNC3(error));
	return -1;
    }

    for (a = ai; a != NULL; a = a->ai_next) {
	int s;

	s = FUNC6 (a->ai_family, a->ai_socktype, a->ai_protocol);
	if (s < 0)
	    continue;
	if (FUNC1 (s, a->ai_addr, a->ai_addrlen) < 0) {
	    FUNC7 ("connect(%s)", hostname);
	    FUNC0 (s);
	    continue;
	}
	FUNC2 (ai);
	return s;
    }
    FUNC8 ("failed to contact %s", hostname);
    FUNC2 (ai);
    return -1;
}