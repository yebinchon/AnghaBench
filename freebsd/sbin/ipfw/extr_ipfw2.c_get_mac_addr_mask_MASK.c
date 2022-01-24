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
struct ether_addr {int dummy; } ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  FUNC0 (struct ether_addr*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ether_addr* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 char* FUNC5 (char const*) ; 
 size_t FUNC6 (char*) ; 
 char* FUNC7 (char**,char*) ; 
 size_t FUNC8 (char*,char const*) ; 
 long FUNC9 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC10(const char *p, uint8_t *addr, uint8_t *mask)
{
	int i;
	size_t l;
	char *ap, *ptr, *optr;
	struct ether_addr *mac;
	const char *macset = "0123456789abcdefABCDEF:";

	if (FUNC4(p, "any") == 0) {
		for (i = 0; i < ETHER_ADDR_LEN; i++)
			addr[i] = mask[i] = 0;
		return;
	}

	optr = ptr = FUNC5(p);
	if ((ap = FUNC7(&ptr, "&/")) != NULL && *ap != 0) {
		l = FUNC6(ap);
		if (FUNC8(ap, macset) != l || (mac = FUNC2(ap)) == NULL)
			FUNC1(EX_DATAERR, "Incorrect MAC address");
		FUNC0(mac, addr, ETHER_ADDR_LEN);
	} else
		FUNC1(EX_DATAERR, "Incorrect MAC address");

	if (ptr != NULL) { /* we have mask? */
		if (p[ptr - optr - 1] == '/') { /* mask len */
			long ml = FUNC9(ptr, &ap, 10);
			if (*ap != 0 || ml > ETHER_ADDR_LEN * 8 || ml < 0)
				FUNC1(EX_DATAERR, "Incorrect mask length");
			for (i = 0; ml > 0 && i < ETHER_ADDR_LEN; ml -= 8, i++)
				mask[i] = (ml >= 8) ? 0xff: (~0) << (8 - ml);
		} else { /* mask */
			l = FUNC6(ptr);
			if (FUNC8(ptr, macset) != l ||
			    (mac = FUNC2(ptr)) == NULL)
				FUNC1(EX_DATAERR, "Incorrect mask");
			FUNC0(mac, mask, ETHER_ADDR_LEN);
		}
	} else { /* default mask: ff:ff:ff:ff:ff:ff */
		for (i = 0; i < ETHER_ADDR_LEN; i++)
			mask[i] = 0xff;
	}
	for (i = 0; i < ETHER_ADDR_LEN; i++)
		addr[i] &= mask[i];

	FUNC3(optr);
}