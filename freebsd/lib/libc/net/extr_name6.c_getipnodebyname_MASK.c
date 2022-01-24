#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
union inx_addr {int /*<<< orphan*/  in_addr; } ;
typedef  int u_long ;
struct in_addr {int dummy; } ;
struct hostent {int /*<<< orphan*/  h_name; } ;
typedef  TYPE_1__* res_state ;
struct TYPE_5__ {int options; int res_h_errno; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int AI_ADDRCONFIG ; 
 int AI_ALL ; 
 int HOST_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (union inx_addr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int NETDB_INTERNAL ; 
 int NO_RECOVERY ; 
 int RES_INIT ; 
 int RES_USE_INET6 ; 
 int SOCK_CLOEXEC ; 
 int SOCK_DGRAM ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct hostent* FUNC4 (int,char const*,union inx_addr*,int*) ; 
 struct hostent* FUNC5 (struct hostent*,int*) ; 
 struct hostent* FUNC6 (struct hostent*,int*) ; 
 struct hostent* FUNC7 (struct hostent*,struct hostent*,int*) ; 
 struct hostent* FUNC8 (struct hostent*) ; 
 struct hostent* FUNC9 (struct hostent*,TYPE_1__*) ; 
 int FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hostent*) ; 
 struct hostent* FUNC12 (char const*,int const) ; 
 int FUNC13 (char const*,struct in_addr*) ; 
 int FUNC14 (int const,char const*,union inx_addr*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct hostent *
FUNC17(const char *name, int af, int flags, int *errp)
{
	struct hostent *hp;
	union inx_addr addrbuf;
	res_state statp;
	u_long options;

	switch (af) {
	case AF_INET:
#ifdef INET6
	case AF_INET6:
#endif
		break;
	default:
		*errp = NO_RECOVERY;
		return NULL;
	}

	if (flags & AI_ADDRCONFIG) {
		int s;

		if ((s = FUNC10(af, SOCK_DGRAM | SOCK_CLOEXEC, 0)) < 0)
			return NULL;
		/*
		 * TODO:
		 * Note that implementation dependent test for address
		 * configuration should be done every time called
		 * (or appropriate interval),
		 * because addresses will be dynamically assigned or deleted.
		 */
		FUNC3(s);
	}
	
#ifdef INET6
	/* special case for literal address */
	if (inet_pton(AF_INET6, name, &addrbuf) == 1) {
		if (af != AF_INET6) {
			*errp = HOST_NOT_FOUND;
			return NULL;
		}
		return _hpaddr(af, name, &addrbuf, errp);
	}
#endif
	if (FUNC13(name, (struct in_addr *)&addrbuf) == 1) {
		if (af != AF_INET) {
			if (FUNC1(flags)) {
				FUNC0(&addrbuf, &addrbuf.in_addr);
			} else {
				*errp = HOST_NOT_FOUND;
				return NULL;
			}
		}
		return FUNC4(af, name, &addrbuf, errp);
	}


	statp = FUNC2();
	if ((statp->options & RES_INIT) == 0) {
		if (FUNC15(statp) < 0) {
			*errp = NETDB_INTERNAL;
			return NULL;
		}
	}
	
	options = statp->options;
	statp->options &= ~RES_USE_INET6;
	
	hp = FUNC12(name, af);
	hp = FUNC5(hp, errp);
#ifdef INET6
	if (af == AF_INET6)
		hp = _hpreorder(hp);

	if (af == AF_INET6 && ((flags & AI_ALL) || hp == NULL) &&
	    MAPADDRENABLED(flags)) {
		struct hostent *hp2 = gethostbyname2(name, AF_INET);
		if (hp == NULL)
			if (hp2 == NULL)
				*errp = statp->res_h_errno;
			else
				hp = _hpmapv6(hp2, errp);
		else {
			if (hp2 && strcmp(hp->h_name, hp2->h_name) == 0) {
				struct hostent *hpb = hp;
				hp = _hpmerge(hpb, hp2, errp);
				freehostent(hpb);
			}
		}
	}
#endif
	
	if (hp == NULL)
		*errp = statp->res_h_errno;
	
	statp->options = options;
	return FUNC9(hp, statp);
}