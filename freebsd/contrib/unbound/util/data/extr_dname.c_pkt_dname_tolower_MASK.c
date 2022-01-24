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
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  MAX_COMPRESS_PTRS ; 
 scalar_t__ FUNC1 (int,int) ; 
 int* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int* FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned char) ; 

void 
FUNC6(sldns_buffer* pkt, uint8_t* dname)
{
	uint8_t lablen;
	int count = 0;
	if(dname >= FUNC3(pkt))
		return;
	lablen = *dname++;
	while(lablen) {
		if(FUNC0(lablen)) {
			if((size_t)FUNC1(lablen, *dname) 
				>= FUNC4(pkt))
				return;
			dname = FUNC2(pkt, FUNC1(lablen, *dname));
			lablen = *dname++;
			if(count++ > MAX_COMPRESS_PTRS)
				return;
			continue;
		}
		if(dname+lablen >= FUNC3(pkt))
			return;
		while(lablen--) {
			*dname = (uint8_t)FUNC5((unsigned char)*dname);
			dname++;
		}
		if(dname >= FUNC3(pkt))
			return;
		lablen = *dname++;
	}
}