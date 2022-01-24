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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct auth_chunk {int dummy; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  VERB_OPS ; 
 scalar_t__ FUNC0 (struct auth_chunk*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_chunk*,int,size_t,int /*<<< orphan*/ **,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_chunk**,int*,size_t*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC5(struct auth_chunk* rr_chunk, int rr_num, size_t rr_pos,
	uint8_t* rr_dname, uint16_t rr_type, uint16_t rr_class,
	uint32_t rr_ttl, uint16_t rr_rdlen, uint8_t* rr_rdata,
	size_t rr_nextpos, uint32_t transfer_serial, uint32_t xfr_serial)
{
	uint32_t startserial;
	/* move forward on RR */
	FUNC2(&rr_chunk, &rr_num, &rr_pos, rr_nextpos);
	if(FUNC0(rr_chunk, rr_num)) {
		/* no second SOA */
		FUNC4(VERB_OPS, "IXFR has no second SOA record");
		return 0;
	}
	if(!FUNC1(rr_chunk, rr_num, rr_pos,
		&rr_dname, &rr_type, &rr_class, &rr_ttl, &rr_rdlen,
		&rr_rdata, &rr_nextpos)) {
		FUNC4(VERB_OPS, "IXFR cannot parse second SOA record");
		/* failed to parse RR */
		return 0;
	}
	if(rr_type != LDNS_RR_TYPE_SOA) {
		FUNC4(VERB_OPS, "IXFR second record is not type SOA");
		return 0;
	}
	if(rr_rdlen < 22) {
		FUNC4(VERB_OPS, "IXFR, second SOA has short rdlength");
		return 0; /* bad SOA rdlen */
	}
	startserial = FUNC3(rr_rdata+rr_rdlen-20);
	if(startserial == transfer_serial) {
		/* empty AXFR, not an IXFR */
		FUNC4(VERB_OPS, "IXFR second serial same as first");
		return 0;
	}
	if(startserial != xfr_serial) {
		/* wrong start serial, it does not match the serial in
		 * memory */
		FUNC4(VERB_OPS, "IXFR is from serial %u to %u but %u "
			"in memory, rejecting the zone transfer",
			(unsigned)startserial, (unsigned)transfer_serial,
			(unsigned)xfr_serial);
		return 0;
	}
	/* everything OK in second SOA serial */
	return 1;
}