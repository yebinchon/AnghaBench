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
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 

bool
FUNC6(const ldns_pkt *pkt)
{
	size_t i;
	for (i = 0; i < FUNC0(pkt); i++) {
		if (FUNC4(FUNC5(FUNC1(pkt), i)) ==
		    LDNS_RR_TYPE_RRSIG) {
			return true;
		}
	}
	for (i = 0; i < FUNC3(pkt); i++) {
		if (FUNC4(FUNC5(FUNC2(pkt), i)) ==
		    LDNS_RR_TYPE_RRSIG) {
			return true;
		}
	}
	return false;
}