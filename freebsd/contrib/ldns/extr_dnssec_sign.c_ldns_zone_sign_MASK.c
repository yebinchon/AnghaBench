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
typedef  int /*<<< orphan*/  const ldns_zone ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_key_list ;
typedef  int /*<<< orphan*/  ldns_dnssec_zone ;

/* Variables and functions */
 int /*<<< orphan*/  ldns_dnssec_default_replace_signatures ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*) ; 

ldns_zone *
FUNC15(const ldns_zone *zone, ldns_key_list *key_list)
{
	ldns_dnssec_zone *dnssec_zone;
	ldns_zone *signed_zone;
	ldns_rr_list *new_rrs;
	size_t i;

	signed_zone = FUNC10();
	dnssec_zone = FUNC2();

	(void) FUNC0(dnssec_zone, FUNC14(zone));
	FUNC13(signed_zone, FUNC4(FUNC14(zone)));

	for (i = 0; i < FUNC9(FUNC12(zone)); i++) {
		(void) FUNC0(dnssec_zone,
								 FUNC8(FUNC12(zone),
											  i));
		FUNC11(signed_zone,
					   FUNC4(FUNC8(FUNC12(zone),
											   i)));
	}

	new_rrs = FUNC6();
	(void) FUNC3(dnssec_zone,
						    new_rrs,
						    key_list,
						    ldns_dnssec_default_replace_signatures,
						    NULL);

    	for (i = 0; i < FUNC9(new_rrs); i++) {
		FUNC7(FUNC12(signed_zone),
						 FUNC4(FUNC8(new_rrs, i)));
	}

	FUNC5(new_rrs);
	FUNC1(dnssec_zone);

	return signed_zone;
}