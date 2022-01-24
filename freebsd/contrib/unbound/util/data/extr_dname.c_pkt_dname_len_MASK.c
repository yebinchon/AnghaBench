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
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 size_t LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  MAX_COMPRESS_PTRS ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

size_t
FUNC8(sldns_buffer* pkt)
{
	size_t len = 0;
	int ptrcount = 0;
	uint8_t labellen;
	size_t endpos = 0;

	/* read dname and determine length */
	/* check compression pointers, loops, out of bounds */
	while(1) {
		/* read next label */
		if(FUNC5(pkt) < 1)
			return 0;
		labellen = FUNC4(pkt);
		if(FUNC0(labellen)) {
			/* compression ptr */
			uint16_t ptr;
			if(FUNC5(pkt) < 1)
				return 0;
			ptr = FUNC1(labellen, FUNC4(pkt));
			if(ptrcount++ > MAX_COMPRESS_PTRS)
				return 0; /* loop! */
			if(FUNC2(pkt) <= ptr)
				return 0; /* out of bounds! */
			if(!endpos)
				endpos = FUNC3(pkt);
			FUNC6(pkt, ptr);
		} else {
			/* label contents */
			if(labellen > 0x3f)
				return 0; /* label too long */
			len += 1 + labellen;
			if(len > LDNS_MAX_DOMAINLEN)
				return 0;
			if(labellen == 0) {
				/* end of dname */
				break;
			}
			if(FUNC5(pkt) < labellen)
				return 0;
			FUNC7(pkt, (ssize_t)labellen);
		}
	}
	if(endpos)
		FUNC6(pkt, endpos);

	return len;
}