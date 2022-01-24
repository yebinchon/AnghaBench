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
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt_section ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

ldns_rr_list *
FUNC9(const ldns_pkt *packet,
                         const ldns_rdf *ownername,
                         ldns_pkt_section sec)
{
	ldns_rr_list *rrs;
	ldns_rr_list *ret;
	uint16_t i;

	if (!packet) {
		return NULL;
	}

	rrs = FUNC1(packet, sec);
	ret = NULL;

	for(i = 0; i < FUNC7(rrs); i++) {
		if (FUNC0(FUNC8(
						FUNC6(rrs, i)), 
					ownername) == 0) {
			/* owner names match */
			if (ret == NULL) {
				ret = FUNC4();
			}
			FUNC5(ret,
					     FUNC2(
						FUNC6(rrs, i))
					    );
		}
	}

	FUNC3(rrs);

	return ret;
}