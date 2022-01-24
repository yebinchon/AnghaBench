#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct auth_xfer {scalar_t__ dclass; TYPE_2__* task_transfer; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  rcode ;
struct TYPE_4__ {scalar_t__ id; int ixfr_fail; int rr_scan_num; int on_ixfr_is_axfr; int got_xfr_serial; scalar_t__ incoming_xfr_serial; TYPE_1__* master; scalar_t__ on_ixfr; } ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ LDNS_HEADER_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ LDNS_PACKET_QUERY ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ LDNS_RCODE_FORMERR ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ LDNS_RCODE_NOTIMPL ; 
 scalar_t__ LDNS_RCODE_REFUSED ; 
 scalar_t__ LDNS_RCODE_SERVFAIL ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ LDNS_RR_TYPE_AXFR ; 
 scalar_t__ LDNS_RR_TYPE_IXFR ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC23(sldns_buffer* pkt, struct auth_xfer* xfr,
	int* gonextonfail, int* transferdone)
{
	uint8_t* wire = FUNC12(pkt);
	int i;
	if(FUNC13(pkt) < LDNS_HEADER_SIZE) {
		FUNC22(VERB_ALGO, "xfr to %s failed, packet too small",
			xfr->task_transfer->master->host);
		return 0;
	}
	if(!FUNC6(wire)) {
		FUNC22(VERB_ALGO, "xfr to %s failed, packet has no QR flag",
			xfr->task_transfer->master->host);
		return 0;
	}
	if(FUNC8(wire)) {
		FUNC22(VERB_ALGO, "xfr to %s failed, packet has TC flag",
			xfr->task_transfer->master->host);
		return 0;
	}
	/* check ID */
	if(FUNC2(wire) != xfr->task_transfer->id) {
		FUNC22(VERB_ALGO, "xfr to %s failed, packet wrong ID",
			xfr->task_transfer->master->host);
		return 0;
	}
	if(FUNC7(wire) != LDNS_RCODE_NOERROR) {
		char rcode[32];
		FUNC21((int)FUNC7(wire), rcode,
			sizeof(rcode));
		/* if we are doing IXFR, check for fallback */
		if(xfr->task_transfer->on_ixfr) {
			if(FUNC7(wire) == LDNS_RCODE_NOTIMPL ||
				FUNC7(wire) == LDNS_RCODE_SERVFAIL ||
				FUNC7(wire) == LDNS_RCODE_REFUSED ||
				FUNC7(wire) == LDNS_RCODE_FORMERR) {
				FUNC22(VERB_ALGO, "xfr to %s, fallback "
					"from IXFR to AXFR (with rcode %s)",
					xfr->task_transfer->master->host,
					rcode);
				xfr->task_transfer->ixfr_fail = 1;
				*gonextonfail = 0;
				return 0;
			}
		}
		FUNC22(VERB_ALGO, "xfr to %s failed, packet with rcode %s",
			xfr->task_transfer->master->host, rcode);
		return 0;
	}
	if(FUNC4(wire) != LDNS_PACKET_QUERY) {
		FUNC22(VERB_ALGO, "xfr to %s failed, packet with bad opcode",
			xfr->task_transfer->master->host);
		return 0;
	}
	if(FUNC5(wire) > 1) {
		FUNC22(VERB_ALGO, "xfr to %s failed, packet has qdcount %d",
			xfr->task_transfer->master->host,
			(int)FUNC5(wire));
		return 0;
	}

	/* check qname */
	FUNC19(pkt, LDNS_HEADER_SIZE);
	for(i=0; i<(int)FUNC5(wire); i++) {
		size_t pos = FUNC14(pkt);
		uint16_t qtype, qclass;
		if(FUNC10(pkt) == 0) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"malformed dname",
				xfr->task_transfer->master->host);
			return 0;
		}
		if(FUNC9(pkt, FUNC11(pkt, pos),
			xfr->name) != 0) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"wrong qname",
				xfr->task_transfer->master->host);
			return 0;
		}
		if(FUNC18(pkt) < 4) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"truncated query RR",
				xfr->task_transfer->master->host);
			return 0;
		}
		qtype = FUNC15(pkt);
		qclass = FUNC15(pkt);
		if(qclass != xfr->dclass) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"wrong qclass",
				xfr->task_transfer->master->host);
			return 0;
		}
		if(xfr->task_transfer->on_ixfr) {
			if(qtype != LDNS_RR_TYPE_IXFR) {
				FUNC22(VERB_ALGO, "xfr to %s failed, packet "
					"with wrong qtype, expected IXFR",
				xfr->task_transfer->master->host);
				return 0;
			}
		} else {
			if(qtype != LDNS_RR_TYPE_AXFR) {
				FUNC22(VERB_ALGO, "xfr to %s failed, packet "
					"with wrong qtype, expected AXFR",
				xfr->task_transfer->master->host);
				return 0;
			}
		}
	}

	/* check parse of RRs in packet, store first SOA serial
	 * to be able to detect last SOA (with that serial) to see if done */
	/* also check for IXFR 'zone up to date' reply */
	for(i=0; i<(int)FUNC0(wire); i++) {
		size_t pos = FUNC14(pkt);
		uint16_t tp, rdlen;
		if(FUNC10(pkt) == 0) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"malformed dname in answer section",
				xfr->task_transfer->master->host);
			return 0;
		}
		if(FUNC18(pkt) < 10) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"truncated RR",
				xfr->task_transfer->master->host);
			return 0;
		}
		tp = FUNC15(pkt);
		(void)FUNC15(pkt); /* class */
		(void)FUNC16(pkt); /* ttl */
		rdlen = FUNC15(pkt);
		if(FUNC18(pkt) < rdlen) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"truncated RR rdata",
				xfr->task_transfer->master->host);
			return 0;
		}

		/* RR parses (haven't checked rdata itself), now look at
		 * SOA records to see serial number */
		if(xfr->task_transfer->rr_scan_num == 0 &&
			tp != LDNS_RR_TYPE_SOA) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"malformed zone transfer, no start SOA",
				xfr->task_transfer->master->host);
			return 0;
		}
		if(xfr->task_transfer->rr_scan_num == 1 &&
			tp != LDNS_RR_TYPE_SOA) {
			/* second RR is not a SOA record, this is not an IXFR
			 * the master is replying with an AXFR */
			xfr->task_transfer->on_ixfr_is_axfr = 1;
		}
		if(tp == LDNS_RR_TYPE_SOA) {
			uint32_t serial;
			if(rdlen < 22) {
				FUNC22(VERB_ALGO, "xfr to %s failed, packet "
					"with SOA with malformed rdata",
					xfr->task_transfer->master->host);
				return 0;
			}
			if(FUNC9(pkt, FUNC11(pkt, pos),
				xfr->name) != 0) {
				FUNC22(VERB_ALGO, "xfr to %s failed, packet "
					"with SOA with wrong dname",
					xfr->task_transfer->master->host);
				return 0;
			}

			/* read serial number of SOA */
			serial = FUNC17(pkt,
				FUNC14(pkt)+rdlen-20);

			/* check for IXFR 'zone has SOA x' reply */
			if(xfr->task_transfer->on_ixfr &&
				xfr->task_transfer->rr_scan_num == 0 &&
				FUNC0(wire)==1) {
				FUNC22(VERB_ALGO, "xfr to %s ended, "
					"IXFR reply that zone has serial %u",
					xfr->task_transfer->master->host,
					(unsigned)serial);
				return 0;
			}

			/* if first SOA, store serial number */
			if(xfr->task_transfer->got_xfr_serial == 0) {
				xfr->task_transfer->got_xfr_serial = 1;
				xfr->task_transfer->incoming_xfr_serial =
					serial;
				FUNC22(VERB_ALGO, "xfr %s: contains "
					"SOA serial %u",
					xfr->task_transfer->master->host,
					(unsigned)serial);
			/* see if end of AXFR */
			} else if(!xfr->task_transfer->on_ixfr ||
				xfr->task_transfer->on_ixfr_is_axfr) {
				/* second SOA with serial is the end
				 * for AXFR */
				*transferdone = 1;
				FUNC22(VERB_ALGO, "xfr %s: last AXFR packet",
					xfr->task_transfer->master->host);
			/* for IXFR, count SOA records with that serial */
			} else if(xfr->task_transfer->incoming_xfr_serial ==
				serial && xfr->task_transfer->got_xfr_serial
				== 1) {
				xfr->task_transfer->got_xfr_serial++;
			/* if not first soa, if serial==firstserial, the
			 * third time we are at the end, for IXFR */
			} else if(xfr->task_transfer->incoming_xfr_serial ==
				serial && xfr->task_transfer->got_xfr_serial
				== 2) {
				FUNC22(VERB_ALGO, "xfr %s: last IXFR packet",
					xfr->task_transfer->master->host);
				*transferdone = 1;
				/* continue parse check, if that succeeds,
				 * transfer is done */
			}
		}
		xfr->task_transfer->rr_scan_num++;

		/* skip over RR rdata to go to the next RR */
		FUNC20(pkt, (ssize_t)rdlen);
	}

	/* check authority section */
	/* we skip over the RRs checking packet format */
	for(i=0; i<(int)FUNC3(wire); i++) {
		uint16_t rdlen;
		if(FUNC10(pkt) == 0) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"malformed dname in authority section",
				xfr->task_transfer->master->host);
			return 0;
		}
		if(FUNC18(pkt) < 10) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"truncated RR",
				xfr->task_transfer->master->host);
			return 0;
		}
		(void)FUNC15(pkt); /* type */
		(void)FUNC15(pkt); /* class */
		(void)FUNC16(pkt); /* ttl */
		rdlen = FUNC15(pkt);
		if(FUNC18(pkt) < rdlen) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"truncated RR rdata",
				xfr->task_transfer->master->host);
			return 0;
		}
		/* skip over RR rdata to go to the next RR */
		FUNC20(pkt, (ssize_t)rdlen);
	}

	/* check additional section */
	for(i=0; i<(int)FUNC1(wire); i++) {
		uint16_t rdlen;
		if(FUNC10(pkt) == 0) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"malformed dname in additional section",
				xfr->task_transfer->master->host);
			return 0;
		}
		if(FUNC18(pkt) < 10) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"truncated RR",
				xfr->task_transfer->master->host);
			return 0;
		}
		(void)FUNC15(pkt); /* type */
		(void)FUNC15(pkt); /* class */
		(void)FUNC16(pkt); /* ttl */
		rdlen = FUNC15(pkt);
		if(FUNC18(pkt) < rdlen) {
			FUNC22(VERB_ALGO, "xfr to %s failed, packet with "
				"truncated RR rdata",
				xfr->task_transfer->master->host);
			return 0;
		}
		/* skip over RR rdata to go to the next RR */
		FUNC20(pkt, (ssize_t)rdlen);
	}

	return 1;
}