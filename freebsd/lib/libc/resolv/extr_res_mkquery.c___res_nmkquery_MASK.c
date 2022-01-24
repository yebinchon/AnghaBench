#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  TYPE_1__* res_state ;
struct TYPE_6__ {int opcode; int rd; void* ancount; void* arcount; void* qdcount; int /*<<< orphan*/  rcode; void* id; } ;
struct TYPE_5__ {int options; int id; } ;
typedef  TYPE_2__ HEADER ;

/* Variables and functions */
 int HFIXEDSZ ; 
 int /*<<< orphan*/  INT16SZ ; 
 int /*<<< orphan*/  INT32SZ ; 
#define  IQUERY 130 
 int /*<<< orphan*/  NOERROR ; 
#define  NS_NOTIFY_OP 129 
 int QFIXEDSZ ; 
#define  QUERY 128 
 int RES_DEBUG ; 
 unsigned int RES_RECURSE ; 
 int RRFIXEDSZ ; 
 int T_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 char** _res_opcodes ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char const*,char*,char*) ; 
 int FUNC11 (TYPE_1__*) ; 

int
FUNC12(res_state statp,
	     int op,			/*!< opcode of query  */
	     const char *dname,		/*!< domain name  */
	     int class, int type,	/*!< class and type of query  */
	     const u_char *data,	/*!< resource record data  */
	     int datalen,		/*!< length of data  */
	     const u_char *newrr_in,	/*!< new rr for modify or append  */
	     u_char *buf,		/*!< buffer to put query  */
	     int buflen)		/*!< size of buffer  */
{
	HEADER *hp;
	u_char *cp, *ep;
	int n;
	u_char *dnptrs[20], **dpp, **lastdnptr;

	FUNC0(newrr_in);

#ifdef DEBUG
	if (statp->options & RES_DEBUG)
		printf(";; res_nmkquery(%s, %s, %s, %s)\n",
		       _res_opcodes[op], dname, p_class(class), p_type(type));
#endif
	/*
	 * Initialize header fields.
	 */
	if ((buf == NULL) || (buflen < HFIXEDSZ))
		return (-1);
	FUNC4(buf, 0, HFIXEDSZ);
	hp = (HEADER *) buf;
	statp->id = FUNC11(statp);
	hp->id = FUNC2(statp->id);
	hp->opcode = op;
	hp->rd = (statp->options & RES_RECURSE) != 0U;
	hp->rcode = NOERROR;
	cp = buf + HFIXEDSZ;
	ep = buf + buflen;
	dpp = dnptrs;
	*dpp++ = buf;
	*dpp++ = NULL;
	lastdnptr = dnptrs + FUNC5(dnptrs);
	/*
	 * perform opcode specific processing
	 */
	switch (op) {
	case QUERY:	/*FALLTHROUGH*/
	case NS_NOTIFY_OP:
		if (ep - cp < QFIXEDSZ)
			return (-1);
		if ((n = FUNC1(dname, cp, ep - cp - QFIXEDSZ, dnptrs,
		    lastdnptr)) < 0)
			return (-1);
		cp += n;
		FUNC6(type, cp);
		cp += INT16SZ;
		FUNC6(class, cp);
		cp += INT16SZ;
		hp->qdcount = FUNC2(1);
		if (op == QUERY || data == NULL)
			break;
		/*
		 * Make an additional record for completion domain.
		 */
		if ((ep - cp) < RRFIXEDSZ)
			return (-1);
		n = FUNC1((const char *)data, cp, ep - cp - RRFIXEDSZ,
			    dnptrs, lastdnptr);
		if (n < 0)
			return (-1);
		cp += n;
		FUNC6(T_NULL, cp);
		cp += INT16SZ;
		FUNC6(class, cp);
		cp += INT16SZ;
		FUNC7(0, cp);
		cp += INT32SZ;
		FUNC6(0, cp);
		cp += INT16SZ;
		hp->arcount = FUNC2(1);
		break;

	case IQUERY:
		/*
		 * Initialize answer section
		 */
		if (ep - cp < 1 + RRFIXEDSZ + datalen)
			return (-1);
		*cp++ = '\0';	/*%< no domain name */
		FUNC6(type, cp);
		cp += INT16SZ;
		FUNC6(class, cp);
		cp += INT16SZ;
		FUNC7(0, cp);
		cp += INT32SZ;
		FUNC6(datalen, cp);
		cp += INT16SZ;
		if (datalen) {
			FUNC3(cp, data, datalen);
			cp += datalen;
		}
		hp->ancount = FUNC2(1);
		break;

	default:
		return (-1);
	}
	return (cp - buf);
}