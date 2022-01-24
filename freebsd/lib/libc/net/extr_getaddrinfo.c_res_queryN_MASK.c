#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct res_target {int qclass; int qtype; int anslen; int n; int /*<<< orphan*/ * answer; struct res_target* next; } ;
typedef  TYPE_1__* res_state ;
struct TYPE_9__ {int rcode; int /*<<< orphan*/  ancount; } ;
struct TYPE_8__ {int _flags; int options; } ;
typedef  TYPE_2__ HEADER ;

/* Variables and functions */
#define  FORMERR 133 
 int /*<<< orphan*/  HOST_NOT_FOUND ; 
 int /*<<< orphan*/  MAXPACKET ; 
 int /*<<< orphan*/  NETDB_INTERNAL ; 
#define  NOERROR 132 
#define  NOTIMP 131 
 int /*<<< orphan*/  NO_DATA ; 
 int /*<<< orphan*/  NO_RECOVERY ; 
#define  NXDOMAIN 130 
 int /*<<< orphan*/  QUERY ; 
#define  REFUSED 129 
 int RES_DEBUG ; 
 int RES_F_EDNS0ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int RES_USE_DNSSEC ; 
 unsigned int RES_USE_EDNS0 ; 
#define  SERVFAIL 128 
 int /*<<< orphan*/  TRY_AGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC8(const char *name, struct res_target *target, res_state res)
{
	u_char *buf;
	HEADER *hp;
	int n;
	u_int oflags;
	struct res_target *t;
	int rcode;
	int ancount;

	rcode = NOERROR;
	ancount = 0;

	buf = FUNC2(MAXPACKET);
	if (!buf) {
		FUNC0(res, NETDB_INTERNAL);
		return -1;
	}

	for (t = target; t; t = t->next) {
		int class, type;
		u_char *answer;
		int anslen;

		hp = (HEADER *)(void *)t->answer;

		/* make it easier... */
		class = t->qclass;
		type = t->qtype;
		answer = t->answer;
		anslen = t->anslen;

		oflags = res->_flags;

again:
		hp->rcode = NOERROR;	/* default */

#ifdef DEBUG
		if (res->options & RES_DEBUG)
			printf(";; res_query(%s, %d, %d)\n", name, class, type);
#endif

		n = FUNC5(res, QUERY, name, class, type, NULL, 0, NULL,
		    buf, MAXPACKET);
		if (n > 0 && (res->_flags & RES_F_EDNS0ERR) == 0 &&
		    (res->options & (RES_USE_EDNS0|RES_USE_DNSSEC)) != 0U)
			n = FUNC6(res, n, buf, MAXPACKET, anslen);
		if (n <= 0) {
#ifdef DEBUG
			if (res->options & RES_DEBUG)
				printf(";; res_query: mkquery failed\n");
#endif
			FUNC1(buf);
			FUNC0(res, NO_RECOVERY);
			return (n);
		}
		n = FUNC7(res, buf, n, answer, anslen);
		if (n < 0) {
			/*
			 * if the query choked with EDNS0, retry
			 * without EDNS0
			 */
			if ((res->options & (RES_USE_EDNS0|RES_USE_DNSSEC))
			    != 0U &&
			    ((oflags ^ res->_flags) & RES_F_EDNS0ERR) != 0) {
				res->_flags |= RES_F_EDNS0ERR;
				if (res->options & RES_DEBUG)
					FUNC4(";; res_nquery: retry without EDNS0\n");
				goto again;
			}
			rcode = hp->rcode;	/* record most recent error */
#ifdef DEBUG
			if (res->options & RES_DEBUG)
				printf(";; res_query: send error\n");
#endif
			continue;
		}

		if (n > anslen)
			hp->rcode = FORMERR; /* XXX not very informative */
		if (hp->rcode != NOERROR || FUNC3(hp->ancount) == 0) {
			rcode = hp->rcode;	/* record most recent error */
#ifdef DEBUG
			if (res->options & RES_DEBUG)
				printf(";; rcode = %u, ancount=%u\n", hp->rcode,
				    ntohs(hp->ancount));
#endif
			continue;
		}

		ancount += FUNC3(hp->ancount);

		t->n = n;
	}

	FUNC1(buf);

	if (ancount == 0) {
		switch (rcode) {
		case NXDOMAIN:
			FUNC0(res, HOST_NOT_FOUND);
			break;
		case SERVFAIL:
			FUNC0(res, TRY_AGAIN);
			break;
		case NOERROR:
			FUNC0(res, NO_DATA);
			break;
		case FORMERR:
		case NOTIMP:
		case REFUSED:
		default:
			FUNC0(res, NO_RECOVERY);
			break;
		}
		return (-1);
	}
	return (ancount);
}