#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct netent_data {char* netbuf; char** net_aliases; } ;
struct netent {char** n_aliases; char* n_name; long n_net; int /*<<< orphan*/  n_addrtype; } ;
typedef  int /*<<< orphan*/  res_state ;
struct TYPE_5__ {scalar_t__ aa; int /*<<< orphan*/  qdcount; int /*<<< orphan*/  ancount; } ;
struct TYPE_4__ {int /*<<< orphan*/ * buf; TYPE_2__ hdr; } ;
typedef  TYPE_1__ querybuf ;
typedef  int /*<<< orphan*/  aux ;
typedef  int /*<<< orphan*/  ans ;
typedef  TYPE_2__ HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
#define  BYADDR 129 
#define  BYNAME 128 
 int C_IN ; 
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int HFIXEDSZ ; 
 int /*<<< orphan*/  HOST_NOT_FOUND ; 
 int /*<<< orphan*/  INT32SZ ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  NETDB_INTERNAL ; 
 scalar_t__ QFIXEDSZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRY_AGAIN ; 
 int T_PTR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  errno ; 
 long FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC12(querybuf *answer, int anslen, int net_i, struct netent *ne,
    struct netent_data *ned, res_state statp)
{

	HEADER *hp;
	u_char *cp;
	int n;
	u_char *eom;
	int type, class, ancount, qdcount, haveanswer;
	char aux[MAXHOSTNAMELEN];
	char ans[MAXHOSTNAMELEN];
	char *in, *bp, *ep, **ap;

	/*
	 * find first satisfactory answer
	 *
	 *      answer --> +------------+  ( MESSAGE )
	 *		   |   Header   |
	 *		   +------------+
	 *		   |  Question  | the question for the name server
	 *		   +------------+
	 *		   |   Answer   | RRs answering the question
	 *		   +------------+
	 *		   | Authority  | RRs pointing toward an authority
	 *		   | Additional | RRs holding additional information
	 *		   +------------+
	 */
	eom = answer->buf + anslen;
	hp = &answer->hdr;
	ancount = FUNC6(hp->ancount); /* #/records in the answer section */
	qdcount = FUNC6(hp->qdcount); /* #/entries in the question section */
	bp = ned->netbuf;
	ep = ned->netbuf + sizeof(ned->netbuf);
	cp = answer->buf + HFIXEDSZ;
	if (!qdcount) {
		if (hp->aa)
			FUNC1(statp, HOST_NOT_FOUND);
		else
			FUNC1(statp, TRY_AGAIN);
		return (-1);
	}
	while (qdcount-- > 0)
		cp += FUNC2(cp, eom) + QFIXEDSZ;
	ap = ned->net_aliases;
	*ap = NULL;
	ne->n_aliases = ned->net_aliases;
	haveanswer = 0;
	while (--ancount >= 0 && cp < eom) {
		n = FUNC3(answer->buf, eom, cp, bp, ep - bp);
		if ((n < 0) || !FUNC7(bp))
			break;
		cp += n;
		ans[0] = '\0';
		(void)FUNC11(&ans[0], bp, sizeof(ans) - 1);
		ans[sizeof(ans) - 1] = '\0';
		FUNC0(type, cp);
		FUNC0(class, cp);
		cp += INT32SZ;		/* TTL */
		FUNC0(n, cp);
		if (class == C_IN && type == T_PTR) {
			n = FUNC3(answer->buf, eom, cp, bp, ep - bp);
			if ((n < 0) || !FUNC8(bp)) {
				cp += n;
				return (-1);
			}
			cp += n;
			*ap++ = bp;
			n = FUNC10(bp) + 1;
			bp += n;
			ne->n_addrtype = (class == C_IN) ? AF_INET : AF_UNSPEC;
			haveanswer++;
		}
	}
	if (haveanswer) {
		*ap = NULL;
		switch (net_i) {
		case BYADDR:
			ne->n_name = *ne->n_aliases;
			ne->n_net = 0L;
			break;
		case BYNAME:
			in = *ne->n_aliases;
			n = FUNC10(ans) + 1;
			if (ep - bp < n) {
				FUNC1(statp, NETDB_INTERNAL);
				errno = ENOBUFS;
				return (-1);
			}
			FUNC9(bp, ans, ep - bp);
			ne->n_name = bp;
			if (FUNC10(in) + 1 > sizeof(aux)) {
				FUNC1(statp, NETDB_INTERNAL);
				errno = ENOBUFS;
				return (-1);
			}
			FUNC5(in, aux);
			ne->n_net = FUNC4(aux);
			break;
		}
		ne->n_aliases++;
		return (0);
	}
	FUNC1(statp, TRY_AGAIN);
	return (-1);
}