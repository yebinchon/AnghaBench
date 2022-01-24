#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct query_info {scalar_t__ qtype; int qclass; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct auth_xfer {int have_zone; int dclass; TYPE_1__* task_transfer; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  serial; } ;
struct auth_master {int /*<<< orphan*/  ixfr; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  qinfo ;
struct TYPE_2__ {int on_ixfr; scalar_t__ ixfr_fail; scalar_t__ on_ixfr_is_axfr; scalar_t__ incoming_xfr_serial; scalar_t__ rr_scan_num; scalar_t__ got_xfr_serial; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_NSCOUNT_OFF ; 
 scalar_t__ LDNS_RR_TYPE_AXFR ; 
 scalar_t__ LDNS_RR_TYPE_IXFR ; 
 int LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  FUNC0 (struct query_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct query_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC10(struct auth_xfer* xfr, sldns_buffer* buf, uint16_t id,
	struct auth_master* master)
{
	struct query_info qinfo;
	uint32_t serial;
	int have_zone;
	have_zone = xfr->have_zone;
	serial = xfr->serial;

	FUNC0(&qinfo, 0, sizeof(qinfo));
	qinfo.qname = xfr->name;
	qinfo.qname_len = xfr->namelen;
	xfr->task_transfer->got_xfr_serial = 0;
	xfr->task_transfer->rr_scan_num = 0;
	xfr->task_transfer->incoming_xfr_serial = 0;
	xfr->task_transfer->on_ixfr_is_axfr = 0;
	xfr->task_transfer->on_ixfr = 1;
	qinfo.qtype = LDNS_RR_TYPE_IXFR;
	if(!have_zone || xfr->task_transfer->ixfr_fail || !master->ixfr) {
		qinfo.qtype = LDNS_RR_TYPE_AXFR;
		xfr->task_transfer->ixfr_fail = 0;
		xfr->task_transfer->on_ixfr = 0;
	}

	qinfo.qclass = xfr->dclass;
	FUNC1(buf, &qinfo);
	FUNC7(buf, 0, id);

	/* append serial for IXFR */
	if(qinfo.qtype == LDNS_RR_TYPE_IXFR) {
		size_t end = FUNC4(buf);
		FUNC2(buf);
		FUNC5(buf, end);
		/* auth section count 1 */
		FUNC7(buf, LDNS_NSCOUNT_OFF, 1);
		/* write SOA */
		FUNC9(buf, 0xC0); /* compressed ptr to qname */
		FUNC9(buf, 0x0C);
		FUNC6(buf, LDNS_RR_TYPE_SOA);
		FUNC6(buf, qinfo.qclass);
		FUNC8(buf, 0); /* ttl */
		FUNC6(buf, 22); /* rdata length */
		FUNC9(buf, 0); /* . */
		FUNC9(buf, 0); /* . */
		FUNC8(buf, serial); /* serial */
		FUNC8(buf, 0); /* refresh */
		FUNC8(buf, 0); /* retry */
		FUNC8(buf, 0); /* expire */
		FUNC8(buf, 0); /* minimum */
		FUNC3(buf);
	}
}