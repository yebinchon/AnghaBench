#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct in6_addr {int dummy; } ;
struct afd {int dummy; } ;
struct addrinfo {struct addrinfo* ai_next; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  sentinel ;
typedef  TYPE_1__* res_state ;
struct TYPE_10__ {int /*<<< orphan*/  ancount; int /*<<< orphan*/  qdcount; } ;
struct TYPE_9__ {int /*<<< orphan*/ * buf; TYPE_3__ hdr; } ;
typedef  TYPE_2__ querybuf ;
typedef  int /*<<< orphan*/  in6 ;
struct TYPE_8__ {scalar_t__ nsort; } ;
typedef  TYPE_3__ HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  AskedForGot ; 
 int C_IN ; 
 int HFIXEDSZ ; 
 int IN6ADDRSZ ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*) ; 
 int INADDRSZ ; 
 scalar_t__ INT16SZ ; 
 scalar_t__ INT32SZ ; 
 int LOG_AUTH ; 
 int LOG_NOTICE ; 
 int MAXDNAME ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  NETDB_SUCCESS ; 
 int /*<<< orphan*/  NO_DATA ; 
 int /*<<< orphan*/  NO_RECOVERY ; 
 scalar_t__ QFIXEDSZ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
#define  T_A 130 
#define  T_AAAA 129 
#define  T_ANY 128 
 int T_CNAME ; 
 int T_KEY ; 
 int T_SIG ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct addrinfo*,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char*,int) ; 
 struct afd* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*) ; 
 struct addrinfo* FUNC8 (struct addrinfo*,struct afd const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo const*,struct addrinfo*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct in6_addr*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int ns_t_dname ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 int FUNC18 (char*) ; 
 int FUNC19 (char const*) ; 
 int FUNC20 (char const*) ; 
 int FUNC21 (char const*) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,char const*,char*,...) ; 

__attribute__((used)) static struct addrinfo *
FUNC23(const querybuf *answer, int anslen, const char *qname, int qtype,
    const struct addrinfo *pai, res_state res)
{
	struct addrinfo sentinel, *cur;
	struct addrinfo ai;
	const struct afd *afd;
	char *canonname;
	const HEADER *hp;
	const u_char *cp;
	int n;
	const u_char *eom;
	char *bp, *ep;
	int type, class, ancount, qdcount;
	int haveanswer, had_error;
	char tbuf[MAXDNAME];
	int (*name_ok)(const char *);
	char hostbuf[8*1024];

	FUNC11(&sentinel, 0, sizeof(sentinel));
	cur = &sentinel;

	canonname = NULL;
	eom = answer->buf + anslen;
	switch (qtype) {
	case T_A:
	case T_AAAA:
	case T_ANY:	/*use T_ANY only for T_A/T_AAAA lookup*/
		name_ok = res_hnok;
		break;
	default:
		return (NULL);	/* XXX should be abort(); */
	}
	/*
	 * find first satisfactory answer
	 */
	hp = &answer->hdr;
	ancount = FUNC12(hp->ancount);
	qdcount = FUNC12(hp->qdcount);
	bp = hostbuf;
	ep = hostbuf + sizeof hostbuf;
	cp = answer->buf + HFIXEDSZ;
	if (qdcount != 1) {
		FUNC1(res, NO_RECOVERY);
		return (NULL);
	}
	n = FUNC5(answer->buf, eom, cp, bp, ep - bp);
	if ((n < 0) || !(*name_ok)(bp)) {
		FUNC1(res, NO_RECOVERY);
		return (NULL);
	}
	cp += n + QFIXEDSZ;
	if (qtype == T_A || qtype == T_AAAA || qtype == T_ANY) {
		/* res_send() has already verified that the query name is the
		 * same as the one we sent; this just gets the expanded name
		 * (i.e., with the succeeding search-domain tacked on).
		 */
		n = FUNC18(bp) + 1;		/* for the \0 */
		if (n >= MAXHOSTNAMELEN) {
			FUNC1(res, NO_RECOVERY);
			return (NULL);
		}
		canonname = bp;
		bp += n;
		/* The qname can be abbreviated, but h_name is now absolute. */
		qname = canonname;
	}
	haveanswer = 0;
	had_error = 0;
	while (ancount-- > 0 && cp < eom && !had_error) {
		n = FUNC5(answer->buf, eom, cp, bp, ep - bp);
		if ((n < 0) || !(*name_ok)(bp)) {
			had_error++;
			continue;
		}
		cp += n;			/* name */
		type = FUNC2(cp);
 		cp += INT16SZ;			/* type */
		class = FUNC2(cp);
 		cp += INT16SZ + INT32SZ;	/* class, TTL */
		n = FUNC2(cp);
		cp += INT16SZ;			/* len */
		if (class != C_IN) {
			/* XXX - debug? syslog? */
			cp += n;
			continue;		/* XXX - had_error++ ? */
		}
		if ((qtype == T_A || qtype == T_AAAA || qtype == T_ANY) &&
		    type == T_CNAME) {
			n = FUNC5(answer->buf, eom, cp, tbuf, sizeof tbuf);
			if ((n < 0) || !(*name_ok)(tbuf)) {
				had_error++;
				continue;
			}
			cp += n;
			/* Get canonical name. */
			n = FUNC18(tbuf) + 1;	/* for the \0 */
			if (n > ep - bp || n >= MAXHOSTNAMELEN) {
				had_error++;
				continue;
			}
			FUNC17(bp, tbuf, ep - bp);
			canonname = bp;
			bp += n;
			continue;
		}
		if (qtype == T_ANY) {
			if (!(type == T_A || type == T_AAAA)) {
				cp += n;
				continue;
			}
		} else if (type != qtype) {
#ifdef DEBUG
			if (type != T_KEY && type != T_SIG &&
			    type != ns_t_dname)
				syslog(LOG_NOTICE|LOG_AUTH,
	       "gethostby*.getanswer: asked for \"%s %s %s\", got type \"%s\"",
				       qname, p_class(C_IN), p_type(qtype),
				       p_type(type));
#endif
			cp += n;
			continue;		/* XXX - had_error++ ? */
		}
		switch (type) {
		case T_A:
		case T_AAAA:
			if (FUNC16(canonname, bp) != 0) {
#ifdef DEBUG
				syslog(LOG_NOTICE|LOG_AUTH,
				       AskedForGot, canonname, bp);
#endif
				cp += n;
				continue;	/* XXX - had_error++ ? */
			}
			if (type == T_A && n != INADDRSZ) {
				cp += n;
				continue;
			}
			if (type == T_AAAA && n != IN6ADDRSZ) {
				cp += n;
				continue;
			}
#ifdef FILTER_V4MAPPED
			if (type == T_AAAA) {
				struct in6_addr in6;
				memcpy(&in6, cp, sizeof(in6));
				if (IN6_IS_ADDR_V4MAPPED(&in6)) {
					cp += n;
					continue;
				}
			}
#endif
			if (!haveanswer) {
				int nn;

				canonname = bp;
				nn = FUNC18(bp) + 1;	/* for the \0 */
				bp += nn;
			}

			/* don't overwrite pai */
			ai = *pai;
			ai.ai_family = (type == T_A) ? AF_INET : AF_INET6;
			afd = FUNC6(ai.ai_family);
			if (afd == NULL) {
				cp += n;
				continue;
			}
			cur->ai_next = FUNC8(&ai, afd, (const char *)cp);
			if (cur->ai_next == NULL)
				had_error++;
			while (cur && cur->ai_next)
				cur = cur->ai_next;
			cp += n;
			break;
		default:
			FUNC3();
		}
		if (!had_error)
			haveanswer++;
	}
	if (haveanswer) {
#if defined(RESOLVSORT)
		/*
		 * We support only IPv4 address for backward
		 * compatibility against gethostbyname(3).
		 */
		if (res->nsort && qtype == T_A) {
			if (addr4sort(&sentinel, res) < 0) {
				freeaddrinfo(sentinel.ai_next);
				RES_SET_H_ERRNO(res, NO_RECOVERY);
				return NULL;
			}
		}
#endif /*RESOLVSORT*/
		if (!canonname)
			(void)FUNC9(pai, sentinel.ai_next, qname);
		else
			(void)FUNC9(pai, sentinel.ai_next, canonname);
		FUNC1(res, NETDB_SUCCESS);
		return sentinel.ai_next;
	}

	/*
	 * We could have walked a CNAME chain, but the ultimate target
	 * may not have what we looked for.
	 */
	FUNC1(res, FUNC12(hp->ancount) > 0 ? NO_DATA : NO_RECOVERY);
	return NULL;
}