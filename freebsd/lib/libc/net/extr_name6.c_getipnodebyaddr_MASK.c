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
typedef  int u_long ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct in6_addr {int dummy; } ;
struct hostent {int dummy; } ;
typedef  TYPE_1__* res_state ;
struct TYPE_5__ {int options; int res_h_errno; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*) ; 
 int /*<<< orphan*/  NETDB_INTERNAL ; 
 int NO_RECOVERY ; 
 int RES_INIT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int RES_USE_INET6 ; 
 TYPE_1__* FUNC4 () ; 
 struct hostent* FUNC5 (struct hostent*,int*) ; 
 struct hostent* FUNC6 (void const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (struct in_addr*,void const*,size_t) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (long,int) ; 

struct hostent *
FUNC10(const void *src, size_t len, int af, int *errp)
{
	struct hostent *hp;
	res_state statp;
	u_long options;
	
#ifdef INET6
	struct in6_addr addrbuf;
#else
	struct in_addr addrbuf;
#endif
	
	switch (af) {
	case AF_INET:
		if (len != sizeof(struct in_addr)) {
			*errp = NO_RECOVERY;
			return NULL;
		}
		if (FUNC9((long)src, sizeof(struct in_addr))) {
			FUNC7(&addrbuf, src, len);
			src = &addrbuf;
		}
		if (((struct in_addr *)src)->s_addr == 0)
			return NULL;
		break;
#ifdef INET6
	case AF_INET6:
		if (len != sizeof(struct in6_addr)) {
			*errp = NO_RECOVERY;
			return NULL;
		}
		if (rounddown2((long)src, sizeof(struct in6_addr) / 2)) {
			/* XXX */
			memcpy(&addrbuf, src, len);
			src = &addrbuf;
		}
		if (IN6_IS_ADDR_UNSPECIFIED((struct in6_addr *)src))
			return NULL;
		if (IN6_IS_ADDR_V4MAPPED((struct in6_addr *)src)
		||  IN6_IS_ADDR_V4COMPAT((struct in6_addr *)src)) {
			src = (char *)src +
			    (sizeof(struct in6_addr) - sizeof(struct in_addr));
			af = AF_INET;
			len = sizeof(struct in_addr);
		}
		break;
#endif
	default:
		*errp = NO_RECOVERY;
		return NULL;
	}

	statp = FUNC4();
	if ((statp->options & RES_INIT) == 0) {
		if (FUNC8(statp) < 0) {
			FUNC3(statp, NETDB_INTERNAL);
			return NULL;
		}
	}
	
	options = statp->options;
	statp->options &= ~RES_USE_INET6;

	hp = FUNC6(src, len, af);
	if (hp == NULL)
		*errp = statp->res_h_errno;
	
	statp->options = options;	
	return (FUNC5(hp, errp));
}