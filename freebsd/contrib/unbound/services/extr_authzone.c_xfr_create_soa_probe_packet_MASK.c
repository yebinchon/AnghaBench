#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct query_info {int /*<<< orphan*/  qclass; int /*<<< orphan*/  qtype; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct auth_xfer {int /*<<< orphan*/  dclass; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  qinfo ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  FUNC0 (struct query_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct query_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct auth_xfer* xfr, sldns_buffer* buf, 
	uint16_t id)
{
	struct query_info qinfo;

	FUNC0(&qinfo, 0, sizeof(qinfo));
	qinfo.qname = xfr->name;
	qinfo.qname_len = xfr->namelen;
	qinfo.qtype = LDNS_RR_TYPE_SOA;
	qinfo.qclass = xfr->dclass;
	FUNC1(buf, &qinfo);
	FUNC2(buf, 0, id);
}