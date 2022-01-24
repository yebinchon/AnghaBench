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
typedef  int /*<<< orphan*/  hashvalue_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int LDNS_MAX_LABELLEN ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned char) ; 

hashvalue_type
FUNC6(sldns_buffer* pkt, uint8_t* dname, hashvalue_type h)
{
	uint8_t labuf[LDNS_MAX_LABELLEN+1];
	uint8_t lablen;
	int i;

	/* preserve case of query, make hash label by label */
	lablen = *dname++;
	while(lablen) {
		if(FUNC0(lablen)) {
			/* follow pointer */
			dname = FUNC4(pkt, FUNC1(lablen, *dname));
			lablen = *dname++;
			continue;
		}
		FUNC3(lablen <= LDNS_MAX_LABELLEN);
		labuf[0] = lablen;
		i=0;
		while(lablen--) {
			labuf[++i] = (uint8_t)FUNC5((unsigned char)*dname);
			dname++;
		}
		h = FUNC2(labuf, labuf[0] + 1, h);
		lablen = *dname++;
	}

	return h;
}