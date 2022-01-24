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
struct kadm_port {char* port; int def_port; struct kadm_port* next; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  portstr ;
typedef  int /*<<< orphan*/  krb5_socket_t ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,struct addrinfo*,struct addrinfo**) ; 
 struct kadm_port* kadm_ports ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rk_SOCK_ERRNO ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

void
FUNC19(krb5_context contextp, const char *port_str)
{
    int e;
    struct kadm_port *p;

    krb5_socket_t *socks = NULL, *tmp;
    unsigned int num_socks = 0;
    int i;

    if (port_str == NULL)
	port_str = "+";

    FUNC9(contextp, port_str);

    for(p = kadm_ports; p; p = p->next) {
	struct addrinfo hints, *ai, *ap;
	char portstr[32];
	FUNC8 (&hints, 0, sizeof(hints));
	hints.ai_flags    = AI_PASSIVE;
	hints.ai_socktype = SOCK_STREAM;

	e = FUNC2(NULL, p->port, &hints, &ai);
	if(e) {
	    FUNC14(portstr, sizeof(portstr), "%u", p->def_port);
	    e = FUNC2(NULL, portstr, &hints, &ai);
	}

	if(e) {
	    FUNC5(contextp, FUNC3(e, errno),
		      "%s", portstr);
	    continue;
	}
	i = 0;
	for(ap = ai; ap; ap = ap->ai_next)
	    i++;
	tmp = FUNC10(socks, (num_socks + i) * sizeof(*socks));
	if(tmp == NULL) {
	    FUNC6(contextp, "failed to reallocate %lu bytes",
		       (unsigned long)(num_socks + i) * sizeof(*socks));
	    continue;
	}
	socks = tmp;
	for(ap = ai; ap; ap = ap->ai_next) {
	    krb5_socket_t s = FUNC15(ap->ai_family, ap->ai_socktype, ap->ai_protocol);
	    if(FUNC11(s)) {
		FUNC5(contextp, rk_SOCK_ERRNO, "socket");
		continue;
	    }

	    FUNC17(s, 1);
	    FUNC16(s, 1);

	    if (FUNC12(FUNC0 (s, ap->ai_addr, ap->ai_addrlen))) {
		FUNC5(contextp, rk_SOCK_ERRNO, "bind");
		FUNC13(s);
		continue;
	    }
	    if (FUNC12(FUNC7 (s, SOMAXCONN))) {
		FUNC5(contextp, rk_SOCK_ERRNO, "listen");
		FUNC13(s);
		continue;
	    }
	    socks[num_socks++] = s;
	}
	FUNC1 (ai);
    }
    if(num_socks == 0)
	FUNC4(contextp, 1, "no sockets to listen to - exiting");

    FUNC18(contextp, socks, num_socks);
}