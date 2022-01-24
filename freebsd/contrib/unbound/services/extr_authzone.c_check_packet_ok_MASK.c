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
typedef  scalar_t__ uint16_t ;
struct auth_xfer {int namelen; scalar_t__ dclass; int /*<<< orphan*/  name; TYPE_1__* task_probe; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_HEADER_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_PACKET_QUERY ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC16(sldns_buffer* pkt, uint16_t qtype, struct auth_xfer* xfr,
	uint32_t* serial)
{
	/* parse to see if packet worked, valid reply */

	/* check serial number of SOA */
	if(FUNC11(pkt) < LDNS_HEADER_SIZE)
		return 0;

	/* check ID */
	if(FUNC1(FUNC9(pkt)) != xfr->task_probe->id)
		return 0;

	/* check flag bits and rcode */
	if(!FUNC4(FUNC9(pkt)))
		return 0;
	if(FUNC2(FUNC9(pkt)) != LDNS_PACKET_QUERY)
		return 0;
	if(FUNC5(FUNC9(pkt)) != LDNS_RCODE_NOERROR)
		return 0;

	/* check qname */
	if(FUNC3(FUNC9(pkt)) != 1)
		return 0;
	FUNC15(pkt, LDNS_HEADER_SIZE);
	if(FUNC14(pkt) < xfr->namelen)
		return 0;
	if(FUNC8(FUNC10(pkt), xfr->name) != 0)
		return 0;
	FUNC15(pkt, (ssize_t)xfr->namelen);

	/* check qtype, qclass */
	if(FUNC14(pkt) < 4)
		return 0;
	if(FUNC12(pkt) != qtype)
		return 0;
	if(FUNC12(pkt) != xfr->dclass)
		return 0;

	if(serial) {
		uint16_t rdlen;
		/* read serial number, from answer section SOA */
		if(FUNC0(FUNC9(pkt)) == 0)
			return 0;
		/* read from first record SOA record */
		if(FUNC14(pkt) < 1)
			return 0;
		if(FUNC6(pkt, FUNC10(pkt),
			xfr->name) != 0)
			return 0;
		if(!FUNC7(pkt))
			return 0;
		/* type, class, ttl, rdatalen */
		if(FUNC14(pkt) < 4+4+2)
			return 0;
		if(FUNC12(pkt) != qtype)
			return 0;
		if(FUNC12(pkt) != xfr->dclass)
			return 0;
		FUNC15(pkt, 4); /* ttl */
		rdlen = FUNC12(pkt);
		if(FUNC14(pkt) < rdlen)
			return 0;
		if(FUNC14(pkt) < 1)
			return 0;
		if(!FUNC7(pkt)) /* soa name */
			return 0;
		if(FUNC14(pkt) < 1)
			return 0;
		if(!FUNC7(pkt)) /* soa name */
			return 0;
		if(FUNC14(pkt) < 20)
			return 0;
		*serial = FUNC13(pkt);
	}
	return 1;
}