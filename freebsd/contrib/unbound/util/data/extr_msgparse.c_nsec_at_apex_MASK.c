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
typedef  scalar_t__ uint8_t ;
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC7(sldns_buffer* pkt)
{
	/* we are at ttl position in packet. */
	size_t pos = FUNC1(pkt);
	uint16_t rdatalen;
	if(FUNC4(pkt) < 7) /* ttl+len+root */
		return 0; /* eek! */
	FUNC6(pkt, 4); /* ttl */;
	rdatalen = FUNC2(pkt);
	if(FUNC4(pkt) < rdatalen) {
		FUNC5(pkt, pos);
		return 0; /* parse error happens later */
	}
	/* must validate the nsec next domain name format */
	if(FUNC0(pkt) == 0) {
		FUNC5(pkt, pos);
		return 0; /* parse error */
	}

	/* see if SOA bit is set. */
	if(FUNC1(pkt) < pos+4+rdatalen) {
		/* nsec type bitmap contains items */
		uint8_t win, blen, bits;
		/* need: windownum, bitmap len, firstbyte */
		if(FUNC1(pkt)+3 > pos+4+rdatalen) {
			FUNC5(pkt, pos);
			return 0; /* malformed nsec */
		}
		win = FUNC3(pkt);
		blen = FUNC3(pkt);
		bits = FUNC3(pkt);
		/* 0window always first window. bitlen >=1 or parse
		   error really. bit 0x2 is SOA. */
		if(win == 0 && blen >= 1 && (bits & 0x02)) {
			FUNC5(pkt, pos);
			return 1;
		}
	}

	FUNC5(pkt, pos);
	return 0;
}