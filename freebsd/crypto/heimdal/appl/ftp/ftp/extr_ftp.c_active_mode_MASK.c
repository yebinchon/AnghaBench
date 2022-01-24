#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  data_addr_ss ;
typedef  int /*<<< orphan*/  addr_str ;
struct TYPE_11__ {int sa_family; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int COMPLETE ; 
 int ERROR ; 
 int /*<<< orphan*/  IPTOS_THROUGHPUT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int SO_DEBUG ; 
 scalar_t__ FUNC0 (int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,unsigned int,...) ; 
 int data ; 
 TYPE_2__* data_addr ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (int,TYPE_2__*,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (int,int) ; 
 TYPE_2__* myctladdr ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int options ; 
 int sendport ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static int
FUNC19 (void)
{
    int tmpno = 0;
    socklen_t len;
    int result;

noport:
    data_addr->sa_family = myctladdr->sa_family;
    FUNC12 (data_addr, FUNC10 (myctladdr),
				 sendport ? 0 : FUNC11 (myctladdr));

    if (data != -1)
	FUNC1 (data);
    data = FUNC9 (data_addr->sa_family, SOCK_STREAM, 0);
    if (data < 0) {
	FUNC17 ("socket");
	if (tmpno)
	    sendport = 1;
	return (1);
    }
    if (!sendport)
	FUNC14 (data, 1);
    if (FUNC0 (data, data_addr, FUNC16 (data_addr)) < 0) {
	FUNC17 ("bind");
	goto bad;
    }
    if (options & SO_DEBUG)
	FUNC13 (data);
    len = sizeof (data_addr_ss);
    if (FUNC4 (data, data_addr, &len) < 0) {
	FUNC17 ("getsockname");
	goto bad;
    }
    if (FUNC6 (data, 1) < 0)
	FUNC17 ("listen");
    if (sendport) {
	char addr_str[256];
	int inet_af;
	int overbose;

	if (FUNC5 (data_addr->sa_family, FUNC10 (data_addr),
		       addr_str, sizeof(addr_str)) == NULL)
	    FUNC3 (1, "inet_ntop failed");
	switch (data_addr->sa_family) {
	case AF_INET :
	    inet_af = 1;
	    break;
#ifdef HAVE_IPV6
	case AF_INET6 :
	    inet_af = 2;
	    break;
#endif
	default :
	    FUNC3 (1, "bad address family %d", data_addr->sa_family);
	}


	overbose = verbose;
	if (debug == 0)
	    verbose  = -1;

	result = FUNC2 ("EPRT |%d|%s|%d|",
			  inet_af, addr_str,
			  FUNC8(FUNC11 (data_addr)));
	verbose = overbose;

	if (result == ERROR) {
	    struct sockaddr_in *sin4 = (struct sockaddr_in *)data_addr;

	    unsigned int a = FUNC7(sin4->sin_addr.s_addr);
	    unsigned int p = FUNC8(sin4->sin_port);

	    if (data_addr->sa_family != AF_INET) {
		FUNC18 ("remote server doesn't support EPRT");
		goto bad;
	    }

	    result = FUNC2("PORT %d,%d,%d,%d,%d,%d",
			     (a >> 24) & 0xff,
			     (a >> 16) & 0xff,
			     (a >> 8) & 0xff,
			     a & 0xff,
			     (p >> 8) & 0xff,
			     p & 0xff);
	    if (result == ERROR && sendport == -1) {
		sendport = 0;
		tmpno = 1;
		goto noport;
	    }
	    return (result != COMPLETE);
	}
	return result != COMPLETE;
    }
    if (tmpno)
	sendport = 1;


#ifdef IPTOS_THROUGHPUT
    socket_set_tos (data, IPTOS_THROUGHPUT);
#endif
    return (0);
bad:
    FUNC1 (data);
    data = -1;
    if (tmpno)
	sendport = 1;
    return (1);
}