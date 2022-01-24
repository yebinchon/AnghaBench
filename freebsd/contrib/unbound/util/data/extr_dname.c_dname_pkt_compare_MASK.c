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
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char) ; 

int 
FUNC5(sldns_buffer* pkt, uint8_t* d1, uint8_t* d2)
{
	uint8_t len1, len2;
	FUNC2(pkt && d1 && d2);
	len1 = *d1++;
	len2 = *d2++;
	while( len1 != 0 || len2 != 0 ) {
		/* resolve ptrs */
		if(FUNC0(len1)) {
			d1 = FUNC3(pkt, FUNC1(len1, *d1));
			len1 = *d1++;
			continue;
		}
		if(FUNC0(len2)) {
			d2 = FUNC3(pkt, FUNC1(len2, *d2));
			len2 = *d2++;
			continue;
		}
		/* check label length */
		FUNC2(len1 <= LDNS_MAX_LABELLEN);
		FUNC2(len2 <= LDNS_MAX_LABELLEN);
		if(len1 != len2) {
			if(len1 < len2) return -1;
			return 1;
		}
		FUNC2(len1 == len2 && len1 != 0);
		/* compare labels */
		while(len1--) {
			if(FUNC4((unsigned char)*d1) != FUNC4((unsigned char)*d2)) {
				if(FUNC4((unsigned char)*d1) < FUNC4((unsigned char)*d2))
					return -1;
				return 1;
			}
			d1++;
			d2++;
		}
		len1 = *d1++;
		len2 = *d2++;
	}
	return 0;
}