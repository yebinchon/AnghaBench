#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct addrinfo {int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_addrlen; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_family; } ;
struct TYPE_10__ {int /*<<< orphan*/  sa; } ;
typedef  TYPE_1__ sockaddr_u ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  AI_ADDRCONFIG ; 
 int /*<<< orphan*/  AI_CANONNAME ; 
 int EAI_BADFLAGS ; 
 int EAI_NODATA ; 
 int EAI_NONAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int NI_DGRAM ; 
 int NI_NAMEREQD ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC4 (TYPE_1__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (char*,char const*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC15 () ; 
 char* FUNC16 (TYPE_1__ const*) ; 

const char *
FUNC17(
	const sockaddr_u *sock
	)
{
	const char		svc[] = "ntp";
	char *			pbuf;
	char *			pliar;
	int			gni_flags;
	struct addrinfo		hints;
	struct addrinfo *	alist;
	struct addrinfo *	ai;
	sockaddr_u		addr;
	size_t			octets;
	int			a_info;
	int			saved_errno;

	saved_errno = FUNC15();

	/* reverse the address to purported DNS name */
	FUNC2(pbuf);
	gni_flags = NI_DGRAM | NI_NAMEREQD;
	if (FUNC11(&sock->sa, FUNC3(sock), pbuf, LIB_BUFLENGTH,
			NULL, 0, gni_flags)) {
		errno = saved_errno;
		return FUNC16(sock);	/* use address */
	}

	FUNC5(1, ("%s reversed to %s\n", FUNC16(sock), pbuf));

	/*
	 * Resolve the reversed name and make sure the reversed address
	 * is among the results.
	 */
	FUNC6(hints);
	hints.ai_family = FUNC0(sock);
	hints.ai_protocol = IPPROTO_UDP;
	hints.ai_socktype = SOCK_DGRAM;
	hints.ai_flags = 0;
	alist = NULL;

	a_info = FUNC10(pbuf, svc, &hints, &alist);
	if (a_info == EAI_NONAME
#ifdef EAI_NODATA
	    || a_info == EAI_NODATA
#endif
	   ) {
		hints.ai_flags = AI_CANONNAME;
#ifdef AI_ADDRCONFIG
		hints.ai_flags |= AI_ADDRCONFIG;
#endif
		a_info = FUNC10(pbuf, svc, &hints, &alist);	
	}
#ifdef AI_ADDRCONFIG
	/* Some older implementations don't like AI_ADDRCONFIG. */
	if (a_info == EAI_BADFLAGS) {
		hints.ai_flags &= ~AI_ADDRCONFIG;
		a_info = getaddrinfo(pbuf, svc, &hints, &alist);	
	}
#endif
	if (a_info)
		goto forward_fail;

	FUNC1(alist != NULL);

	for (ai = alist; ai != NULL; ai = ai->ai_next) {
		/*
		 * Make a convenience sockaddr_u copy from ai->ai_addr
		 * because casting from sockaddr * to sockaddr_u * is
		 * risking alignment problems on platforms where
		 * sockaddr_u has stricter alignment than sockaddr,
		 * such as sparc.
		 */
		FUNC7(&addr);
		octets = FUNC13(sizeof(addr), ai->ai_addrlen);
		FUNC12(&addr, ai->ai_addr, octets);
		if (FUNC4(sock, &addr))
			break;
	}
	FUNC8(alist);

	if (ai != NULL) {
		errno = saved_errno;
		return pbuf;	/* forward check passed */
	}

    forward_fail:
	FUNC5(1, ("%s forward check lookup fail: %s\n", pbuf,
		  FUNC9(a_info)));
	FUNC2(pliar);
	FUNC14(pliar, LIB_BUFLENGTH, "%s (%s)", FUNC16(sock), pbuf);

	errno = saved_errno;
	return pliar;
}