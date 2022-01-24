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
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ LDNS_MAX_LABELLEN ; 
 int /*<<< orphan*/  MAX_COMPRESS_PTRS ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(sldns_buffer* pkt, uint8_t* qbuf, size_t qbuflen)
{
	uint8_t* d1 = FUNC5(pkt)+12;
	uint8_t* d2 = qbuf+10;
	uint8_t len1, len2;
	int count = 0;
	if(FUNC6(pkt) < 12+1+4) /* packet too small for qname */
		return 0;
	FUNC2(qbuflen >= 15 /* 10 header, root, type, class */);
	len1 = *d1++;
	len2 = *d2++;
	while(len1 != 0 || len2 != 0) {
		if(FUNC0(len1)) {
			/* check if we can read *d1 with compression ptr rest */
			if(d1 >= FUNC4(pkt, FUNC6(pkt)))
				return 0;
			d1 = FUNC5(pkt)+FUNC1(len1, *d1);
			/* check if we can read the destination *d1 */
			if(d1 >= FUNC4(pkt, FUNC6(pkt)))
				return 0;
			len1 = *d1++;
			if(count++ > MAX_COMPRESS_PTRS)
				return 0;
			continue;
		}
		if(d2 > qbuf+qbuflen)
			return 0;
		if(len1 != len2)
			return 0;
		if(len1 > LDNS_MAX_LABELLEN)
			return 0;
		/* check len1 + 1(next length) are okay to read */
		if(d1+len1 >= FUNC4(pkt, FUNC6(pkt)))
			return 0;
		FUNC2(len1 <= LDNS_MAX_LABELLEN);
		FUNC2(len2 <= LDNS_MAX_LABELLEN);
		FUNC2(len1 == len2 && len1 != 0);
		/* compare the labels - bitwise identical */
		if(FUNC3(d1, d2, len1) != 0)
			return 0;
		d1 += len1;
		d2 += len2;
		len1 = *d1++;
		len2 = *d2++;
	}
	return 1;
}