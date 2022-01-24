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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MIN_BUFLEN ; 
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 scalar_t__ LDNS_RR_TYPE_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

uint16_t
FUNC7(const ldns_rr *key)
{
	uint16_t ac16;
	ldns_buffer *keybuf;
	size_t keysize;

	if (!key) {
		return 0;
	}

	if (FUNC5(key) != LDNS_RR_TYPE_DNSKEY &&
	    FUNC5(key) != LDNS_RR_TYPE_KEY
	    ) {
		return 0;
	}

	/* rdata to buf - only put the rdata in a buffer */
	keybuf = FUNC2(LDNS_MIN_BUFLEN); /* grows */
	if (!keybuf) {
		return 0;
	}
	(void)FUNC6(keybuf, key);
	/* the current pos in the buffer is the keysize */
	keysize= FUNC3(keybuf);

	ac16 = FUNC4(FUNC0(keybuf), keysize);
	FUNC1(keybuf);
	return ac16;
}