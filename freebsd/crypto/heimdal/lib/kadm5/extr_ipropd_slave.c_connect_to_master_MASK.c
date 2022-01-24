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
typedef  int /*<<< orphan*/  port ;
typedef  int /*<<< orphan*/  node ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int IPROP_PORT ; 
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC12 (krb5_context context, const char *master,
		   const char *port_str)
{
    char port[NI_MAXSERV];
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    int s = -1;

    FUNC8 (&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;

    if (port_str == NULL) {
	FUNC9(port, sizeof(port), "%u", IPROP_PORT);
	port_str = port;
    }

    error = FUNC4 (master, port_str, &hints, &ai);
    if (error) {
	FUNC7(context, "Failed to get address of to %s: %s",
		   master, FUNC3(error));
	return -1;
    }

    for (a = ai; a != NULL; a = a->ai_next) {
	char node[NI_MAXHOST];
	error = FUNC5(a->ai_addr, a->ai_addrlen,
			    node, sizeof(node), NULL, 0, NI_NUMERICHOST);
	if (error)
	    FUNC11(node, "[unknown-addr]", sizeof(node));

	s = FUNC10 (a->ai_family, a->ai_socktype, a->ai_protocol);
	if (s < 0)
	    continue;
	if (FUNC1 (s, a->ai_addr, a->ai_addrlen) < 0) {
	    FUNC6(context, errno, "connection failed to %s[%s]",
		      master, node);
	    FUNC0 (s);
	    continue;
	}
	FUNC7(context, "connection successful "
		   "to master: %s[%s]", master, node);
	break;
    }
    FUNC2 (ai);

    if (a == NULL)
	return -1;

    return s;
}