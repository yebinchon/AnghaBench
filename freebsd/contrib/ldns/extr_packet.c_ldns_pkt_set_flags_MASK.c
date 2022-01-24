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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int LDNS_AA ; 
 int LDNS_AD ; 
 int LDNS_CD ; 
 int LDNS_QR ; 
 int LDNS_RA ; 
 int LDNS_RD ; 
 int LDNS_TC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

bool
FUNC7(ldns_pkt *packet, uint16_t flags)
{
	if (!packet) {
		return false;
	}
	if ((flags & LDNS_QR) == LDNS_QR) {
		FUNC3(packet, true);
	}
	if ((flags & LDNS_AA) == LDNS_AA) {
		FUNC0(packet, true);
	}
	if ((flags & LDNS_RD) == LDNS_RD) {
		FUNC5(packet, true);
	}
	if ((flags & LDNS_TC) == LDNS_TC) {
		FUNC6(packet, true);
	}
	if ((flags & LDNS_CD) == LDNS_CD) {
		FUNC2(packet, true);
	}
	if ((flags & LDNS_RA) == LDNS_RA) {
		FUNC4(packet, true);
	}
	if ((flags & LDNS_AD) == LDNS_AD) {
		FUNC1(packet, true);
	}
	return true;
}