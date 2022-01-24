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
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt_section ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

ldns_rr_list *
FUNC11(const ldns_pkt *packet,
                                  const ldns_rdf *ownername,
                                  ldns_rr_type type,
                                  ldns_pkt_section sec)
{
	ldns_rr_list *rrs;
	ldns_rr_list *new;
	ldns_rr_list *ret;
	uint16_t i;

	if(!packet) {
		return NULL;
	}
	
	rrs = FUNC1(packet, sec);
	new = FUNC6();
	ret = NULL;

	for(i = 0; i < FUNC9(rrs); i++) {
		if (type == FUNC3(FUNC8(rrs, i)) &&
		    FUNC0(FUNC10(FUNC8(rrs, i)),
		                     ownername
		                    ) == 0
		   ) {
			/* types match */
			FUNC7(new, FUNC2(FUNC8(rrs, i)));
			ret = new;
		}
	}
	FUNC4(rrs);
	if (!ret) {
		FUNC5(new);
	}
	return ret;
}