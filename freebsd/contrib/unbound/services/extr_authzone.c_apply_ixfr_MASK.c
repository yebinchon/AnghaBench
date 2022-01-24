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
struct sldns_buffer {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_xfer {scalar_t__ serial; } ;
struct auth_chunk {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct auth_zone*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sldns_buffer*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_zone*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sldns_buffer*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_chunk*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct auth_chunk*,int,size_t,int /*<<< orphan*/ **,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct auth_chunk**,int*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct auth_xfer*,struct auth_chunk**,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct auth_chunk*,int,size_t,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,size_t,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct auth_chunk*,int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int verbosity ; 

__attribute__((used)) static int
FUNC10(struct auth_xfer* xfr, struct auth_zone* z,
	struct sldns_buffer* scratch_buffer)
{
	struct auth_chunk* rr_chunk;
	int rr_num;
	size_t rr_pos;
	uint8_t* rr_dname, *rr_rdata;
	uint16_t rr_type, rr_class, rr_rdlen;
	uint32_t rr_ttl;
	size_t rr_nextpos;
	int have_transfer_serial = 0;
	uint32_t transfer_serial = 0;
	size_t rr_counter = 0;
	int delmode = 0;
	int softfail = 0;

	/* start RR iterator over chunklist of packets */
	FUNC5(xfr, &rr_chunk, &rr_num, &rr_pos);
	while(!FUNC2(rr_chunk, rr_num)) {
		if(!FUNC3(rr_chunk, rr_num, rr_pos,
			&rr_dname, &rr_type, &rr_class, &rr_ttl, &rr_rdlen,
			&rr_rdata, &rr_nextpos)) {
			/* failed to parse RR */
			return 0;
		}
		if(verbosity>=7) FUNC7("apply ixfr",
			rr_chunk, rr_dname, rr_type, rr_counter);
		/* twiddle add/del mode and check for start and end */
		if(rr_counter == 0 && rr_type != LDNS_RR_TYPE_SOA)
			return 0;
		if(rr_counter == 1 && rr_type != LDNS_RR_TYPE_SOA) {
			/* this is an AXFR returned from the IXFR master */
			/* but that should already have been detected, by
			 * on_ixfr_is_axfr */
			return 0;
		}
		if(rr_type == LDNS_RR_TYPE_SOA) {
			uint32_t serial;
			if(rr_rdlen < 22) return 0; /* bad SOA rdlen */
			serial = FUNC8(rr_rdata+rr_rdlen-20);
			if(have_transfer_serial == 0) {
				have_transfer_serial = 1;
				transfer_serial = serial;
				delmode = 1; /* gets negated below */
				/* check second RR before going any further */
				if(!FUNC6(rr_chunk, rr_num, rr_pos,
					rr_dname, rr_type, rr_class, rr_ttl,
					rr_rdlen, rr_rdata, rr_nextpos,
					transfer_serial, xfr->serial)) {
					return 0;
				}
			} else if(transfer_serial == serial) {
				have_transfer_serial++;
				if(rr_counter == 1) {
					/* empty AXFR, with SOA; SOA; */
					/* should have been detected by
					 * on_ixfr_is_axfr */
					return 0;
				}
				if(have_transfer_serial == 3) {
					/* see serial three times for end */
					/* eg. IXFR:
					 *  SOA 3 start
					 *  SOA 1 second RR, followed by del
					 *  SOA 2 followed by add
					 *  SOA 2 followed by del
					 *  SOA 3 followed by add
					 *  SOA 3 end */
					/* ended by SOA record */
					xfr->serial = transfer_serial;
					break;
				}
			}
			/* twiddle add/del mode */
			/* switch from delete part to add part and back again
			 * just before the soa, it gets deleted and added too
			 * this means we switch to delete mode for the final
			 * SOA(so skip that one) */
			delmode = !delmode;
		}
		/* process this RR */
		/* if the RR is deleted twice or added twice, then we 
		 * softfail, and continue with the rest of the IXFR, so
		 * that we serve something fairly nice during the refetch */
		if(verbosity>=7) FUNC7((delmode?"del":"add"),
			rr_chunk, rr_dname, rr_type, rr_counter);
		if(delmode) {
			/* delete this RR */
			int nonexist = 0;
			if(!FUNC1(z, rr_chunk->data,
				rr_chunk->len, scratch_buffer, rr_dname,
				rr_type, rr_class, rr_ttl, rr_rdata, rr_rdlen,
				&nonexist)) {
				/* failed, malloc error or so */
				return 0;
			}
			if(nonexist) {
				/* it was removal of a nonexisting RR */
				if(verbosity>=4) FUNC7(
					"IXFR error nonexistent RR",
					rr_chunk, rr_dname, rr_type, rr_counter);
				softfail = 1;
			}
		} else if(rr_counter != 0) {
			/* skip first SOA RR for addition, it is added in
			 * the addition part near the end of the ixfr, when
			 * that serial is seen the second time. */
			int duplicate = 0;
			/* add this RR */
			if(!FUNC0(z, rr_chunk->data,
				rr_chunk->len, scratch_buffer, rr_dname,
				rr_type, rr_class, rr_ttl, rr_rdata, rr_rdlen,
				&duplicate)) {
				/* failed, malloc error or so */
				return 0;
			}
			if(duplicate) {
				/* it was a duplicate */
				if(verbosity>=4) FUNC7(
					"IXFR error duplicate RR",
					rr_chunk, rr_dname, rr_type, rr_counter);
				softfail = 1;
			}
		}

		rr_counter++;
		FUNC4(&rr_chunk, &rr_num, &rr_pos, rr_nextpos);
	}
	if(softfail) {
		FUNC9(VERB_ALGO, "IXFR did not apply cleanly, fetching full zone");
		return 0;
	}
	return 1;
}