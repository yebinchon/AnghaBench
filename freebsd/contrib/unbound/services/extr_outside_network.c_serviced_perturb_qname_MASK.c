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
struct ub_randstate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 scalar_t__ VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 long FUNC5 (struct ub_randstate*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,char*) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void
FUNC7(struct ub_randstate* rnd, uint8_t* qbuf, size_t len)
{
	uint8_t lablen;
	uint8_t* d = qbuf + 10;
	long int random = 0;
	int bits = 0;
	FUNC2(len >= 10 + 5 /* offset qname, root, qtype, qclass */);
	(void)len;
	lablen = *d++;
	while(lablen) {
		while(lablen--) {
			/* only perturb A-Z, a-z */
			if(FUNC1((unsigned char)*d)) {
				/* get a random bit */	
				if(bits == 0) {
					random = FUNC5(rnd);
					bits = 30;
				}
				if(random & 0x1) {
					*d = (uint8_t)FUNC4((unsigned char)*d);
				} else {
					*d = (uint8_t)FUNC3((unsigned char)*d);
				}
				random >>= 1;
				bits--;
			}
			d++;
		}
		lablen = *d++;
	}
	if(verbosity >= VERB_ALGO) {
		char buf[LDNS_MAX_DOMAINLEN+1];
		FUNC0(qbuf+10, buf);
		FUNC6(VERB_ALGO, "qname perturbed to %s", buf);
	}
}