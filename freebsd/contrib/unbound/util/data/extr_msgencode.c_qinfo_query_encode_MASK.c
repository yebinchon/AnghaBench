#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint16_t ;
struct query_info {char* qname; size_t qname_len; int qtype; int qclass; TYPE_3__* local_alias; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
struct TYPE_6__ {TYPE_2__* rrset; } ;
struct TYPE_4__ {char* dname; size_t dname_len; } ;
struct TYPE_5__ {TYPE_1__ rk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void 
FUNC7(sldns_buffer* pkt, struct query_info* qinfo)
{
	uint16_t flags = 0; /* QUERY, NOERROR */
	const uint8_t* qname = qinfo->local_alias ?
		qinfo->local_alias->rrset->rk.dname : qinfo->qname;
	size_t qname_len = qinfo->local_alias ?
		qinfo->local_alias->rrset->rk.dname_len : qinfo->qname_len;
	FUNC1(pkt);
	FUNC0(FUNC3(pkt) >= 12+255+4/*max query*/);
	FUNC4(pkt, 2); /* id done later */
	FUNC6(pkt, flags);
	FUNC6(pkt, 1); /* query count */
	FUNC5(pkt, "\000\000\000\000\000\000", 6); /* counts */
	FUNC5(pkt, qname, qname_len);
	FUNC6(pkt, qinfo->qtype);
	FUNC6(pkt, qinfo->qclass);
	FUNC2(pkt);
}