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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_pkt_section ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

ldns_rr_list *
FUNC9(const ldns_pkt *packet,
                         ldns_rr_type type,
                         ldns_pkt_section sec)
{
	ldns_rr_list *rrs;
	ldns_rr_list *new;
	uint16_t i;

	if(!packet) {
		return NULL;
	}
	
	rrs = FUNC0(packet, sec);
	new = FUNC5();
	
	for(i = 0; i < FUNC8(rrs); i++) {
		if (type == FUNC2(FUNC7(rrs, i))) {
			/* types match */
			FUNC6(new, 
			                     FUNC1(
			                     	FUNC7(rrs, i))
					     );
		}
	}
	FUNC3(rrs);

	if (FUNC8(new) == 0) {
		FUNC4(new);
		return NULL;
	} else {
		return new;
	}
}