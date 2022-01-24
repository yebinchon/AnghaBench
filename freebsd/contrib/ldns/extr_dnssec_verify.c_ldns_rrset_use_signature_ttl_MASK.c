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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void
FUNC16(ldns_rr_list* rrset_clone, const ldns_rr* rrsig)
{
	uint32_t orig_ttl;
	uint16_t i;
	uint8_t label_count;
	ldns_rdf *wildcard_name;
	ldns_rdf *wildcard_chopped;
	ldns_rdf *wildcard_chopped_tmp;
	
	if ((rrsig == NULL) || FUNC11(rrsig) < 4) {
		return;
	}

	orig_ttl = FUNC3( FUNC12(rrsig, 3));
	label_count = FUNC4(FUNC12(rrsig, 2));

	for(i = 0; i < FUNC9(rrset_clone); i++) {
		if (label_count < 
		    FUNC1(
			   FUNC10(FUNC8(rrset_clone, i)))) {
			(void) FUNC15(&wildcard_name, "*");
			wildcard_chopped = FUNC5(FUNC10(
				FUNC8(rrset_clone, i)));
			while (label_count < FUNC1(wildcard_chopped)) {
				wildcard_chopped_tmp = FUNC2(
					wildcard_chopped);
				FUNC6(wildcard_chopped);
				wildcard_chopped = wildcard_chopped_tmp;
			}
			(void) FUNC0(wildcard_name, wildcard_chopped);
			FUNC6(wildcard_chopped);
			FUNC6(FUNC10(FUNC8(
				rrset_clone, i)));
			FUNC13(FUNC8(rrset_clone, i), 
				wildcard_name);
		}
		FUNC14(FUNC8(rrset_clone, i), orig_ttl);
		/* convert to lowercase */
		FUNC7(FUNC8(rrset_clone, i));
	}
}