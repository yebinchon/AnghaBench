#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  TYPE_1__* res_state ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_10__ {int rcode; int /*<<< orphan*/  arcount; int /*<<< orphan*/  nscount; int /*<<< orphan*/  ancount; } ;
struct TYPE_9__ {int _flags; int options; } ;
typedef  TYPE_2__ HEADER ;

/* Variables and functions */
#define  FORMERR 133 
 int /*<<< orphan*/  HOST_NOT_FOUND ; 
 int MAXPACKET ; 
#define  NOERROR 132 
#define  NOTIMP 131 
 int /*<<< orphan*/  NO_DATA ; 
 int /*<<< orphan*/  NO_RECOVERY ; 
 int /*<<< orphan*/  NS_OPT_NSID ; 
#define  NXDOMAIN 130 
 int /*<<< orphan*/  QUERY ; 
#define  REFUSED 129 
 int RES_DEBUG ; 
 int RES_F_EDNS0ERR ; 
 unsigned int RES_NSID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int RES_USE_DNSSEC ; 
 unsigned int RES_USE_EDNS0 ; 
#define  SERVFAIL 128 
 int /*<<< orphan*/  TRY_AGAIN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

int
FUNC8(res_state statp,
	   const char *name,	/*%< domain name */
	   int class, int type,	/*%< class and type of query */
	   u_char *answer,	/*%< buffer to put answer */
	   int anslen)		/*%< size of answer buffer */
{
	u_char buf[MAXPACKET];
	HEADER *hp = (HEADER *) answer;
	u_int oflags;
	u_char *rdata;
	int n;

	oflags = statp->_flags;

again:
	hp->rcode = NOERROR;	/*%< default */
#ifdef DEBUG
	if (statp->options & RES_DEBUG)
		printf(";; res_query(%s, %d, %d)\n", name, class, type);
#endif

	n = FUNC4(statp, QUERY, name, class, type, NULL, 0, NULL,
			 buf, sizeof(buf));
#ifdef RES_USE_EDNS0
	if (n > 0 && (statp->_flags & RES_F_EDNS0ERR) == 0 &&
	    (statp->options & (RES_USE_EDNS0|RES_USE_DNSSEC|RES_NSID))) {
		n = res_nopt(statp, n, buf, sizeof(buf), anslen);
		if (n > 0 && (statp->options & RES_NSID) != 0U) {
			rdata = &buf[n];
			n = res_nopt_rdata(statp, n, buf, sizeof(buf), rdata,
					   NS_OPT_NSID, 0, NULL);
		}
	}
#endif
	if (n <= 0) {
#ifdef DEBUG
		if (statp->options & RES_DEBUG)
			printf(";; res_query: mkquery failed\n");
#endif
		FUNC0(statp, NO_RECOVERY);
		return (n);
	}

	n = FUNC7(statp, buf, n, answer, anslen);
	if (n < 0) {
#ifdef RES_USE_EDNS0
		/* if the query choked with EDNS0, retry without EDNS0 */
		if ((statp->options & (RES_USE_EDNS0|RES_USE_DNSSEC)) != 0U &&
		    ((oflags ^ statp->_flags) & RES_F_EDNS0ERR) != 0) {
			statp->_flags |= RES_F_EDNS0ERR;
			if (statp->options & RES_DEBUG)
				printf(";; res_nquery: retry without EDNS0\n");
			goto again;
		}
#endif
#ifdef DEBUG
		if (statp->options & RES_DEBUG)
			printf(";; res_query: send error\n");
#endif
		FUNC0(statp, TRY_AGAIN);
		return (n);
	}

	if (hp->rcode != NOERROR || FUNC1(hp->ancount) == 0) {
#ifdef DEBUG
		if (statp->options & RES_DEBUG)
			printf(";; rcode = (%s), counts = an:%d ns:%d ar:%d\n",
			       p_rcode(hp->rcode),
			       ntohs(hp->ancount),
			       ntohs(hp->nscount),
			       ntohs(hp->arcount));
#endif
		switch (hp->rcode) {
		case NXDOMAIN:
			FUNC0(statp, HOST_NOT_FOUND);
			break;
		case SERVFAIL:
			FUNC0(statp, TRY_AGAIN);
			break;
		case NOERROR:
			FUNC0(statp, NO_DATA);
			break;
		case FORMERR:
		case NOTIMP:
		case REFUSED:
		default:
			FUNC0(statp, NO_RECOVERY);
			break;
		}
		return (-1);
	}
	return (n);
}