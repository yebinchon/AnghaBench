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
 size_t LDNS_MAX_DOMAINLEN ; 
 scalar_t__ LDNS_MAX_LABELLEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(sldns_buffer* pkt, uint8_t* to, uint8_t* dname)
{
	/* copy over the dname and decompress it at the same time */
	size_t len = 0;
	uint8_t lablen;
	lablen = *dname++;
	while(lablen) {
		if(FUNC0(lablen)) {
			/* follow pointer */
			dname = FUNC5(pkt, FUNC1(lablen, *dname));
			lablen = *dname++;
			continue;
		}
		FUNC2(lablen <= LDNS_MAX_LABELLEN);
		len += (size_t)lablen+1;
		if(len >= LDNS_MAX_DOMAINLEN) {
			*to = 0; /* end the result prematurely */
			FUNC3("bad dname in dname_pkt_copy");
			return;
		}
		*to++ = lablen;
		FUNC4(to, dname, lablen);
		dname += lablen;
		to += lablen;
		lablen = *dname++;
	}
	/* copy last \0 */
	*to = 0;
}