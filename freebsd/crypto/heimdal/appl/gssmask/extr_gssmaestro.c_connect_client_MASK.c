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
struct client {char* name; int salen; int capabilities; char* moniker; int child; int /*<<< orphan*/  thr; int /*<<< orphan*/ * logsock; int /*<<< orphan*/  target_name; int /*<<< orphan*/ * sock; void* sa; } ;
struct addrinfo {int ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int HAS_MONIKER ; 
 int ISSERVER ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 struct client** clients ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int,int) ; 
 struct client** FUNC3 (struct client**,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 void* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC12 (struct client*,char**) ; 
 int /*<<< orphan*/  FUNC13 (struct client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct client*,int /*<<< orphan*/ *,int*,char**) ; 
 int FUNC15 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 void* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct client*) ; 
 scalar_t__ logfile ; 
 int /*<<< orphan*/  FUNC18 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int num_clients ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct client*),struct client*) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC23 (char*,char) ; 
 int FUNC24 (struct client*) ; 

__attribute__((used)) static void
FUNC25(const char *slave)
{
    char *name, *port;
    struct client *c = FUNC2(1, sizeof(*c));
    struct addrinfo hints, *res0, *res;
    int ret, fd;

    name = FUNC6(slave);
    port = FUNC23(name, ':');
    if (port == NULL)
	FUNC5(1, "port missing from %s", name);
    *port++ = 0;

    c->name = FUNC6(slave);

    FUNC19(&hints, 0, sizeof(hints));
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;

    ret = FUNC15(name, port, &hints, &res0);
    if (ret)
	FUNC5(1, "error resolving %s", name);

    for (res = res0, fd = -1; res; res = res->ai_next) {
	fd = FUNC22(res->ai_family, res->ai_socktype, res->ai_protocol);
	if (fd < 0)
	    continue;
	if (FUNC1(fd, res->ai_addr, res->ai_addrlen) < 0) {
	    FUNC0(fd);
	    fd = -1;
	    continue;
	}
	c->sa = FUNC2(1, res->ai_addrlen);
	FUNC18(c->sa, res->ai_addr, res->ai_addrlen);
	c->salen = res->ai_addrlen;
	break;  /* okay we got one */
    }
    if (fd < 0)
	FUNC4(1, "connect to host: %s", name);
    FUNC11(res);

    c->sock = FUNC16(fd);
    FUNC0(fd);
    if (c->sock == NULL)
	FUNC5(1, "krb5_storage_from_fd");

    {
	int32_t version;
	char *str = NULL;
	FUNC14(c, &version, &c->capabilities, &str);
	if (str) {
	    FUNC10(str);
	}
	if (c->capabilities & HAS_MONIKER)
	    FUNC12(c, &c->moniker);
	else
	    c->moniker = c->name;
	if (c->capabilities & ISSERVER)
	    FUNC13(c, &c->target_name);
    }

    if (logfile) {
	int fd;

	FUNC20("starting log socket to client %s\n", c->moniker);

	fd = FUNC24(c);

	c->logsock = FUNC16(fd);
	FUNC0(fd);
	if (c->logsock == NULL)
	    FUNC5(1, "failed to create log krb5_storage");
#ifdef ENABLE_PTHREAD_SUPPORT
	pthread_create(&c->thr, NULL, log_function, c);
#else
	c->child = FUNC9();
	if (c->child == -1)
	    FUNC5(1, "failed to fork");
	else if (c->child == 0) {
	    FUNC17(c);
	    FUNC8(logfile);
	    FUNC7(0);
	}
#endif
   }


    clients = FUNC3(clients, (num_clients + 1) * sizeof(*clients));

    clients[num_clients] = c;
    num_clients++;

    FUNC10(name);
}