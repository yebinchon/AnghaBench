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
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_key_list ;
typedef  int /*<<< orphan*/  ldns_key ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int LDNS_KEY_ZONE_KEY ; 
 int /*<<< orphan*/  LDNS_MAX_PACKETLEN ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ldns_rr_list *
FUNC24(ldns_rr_list *rrset, ldns_key_list *keys)
{
	ldns_rr_list *signatures;
	ldns_rr_list *rrset_clone;
	ldns_rr *current_sig;
	ldns_rdf *b64rdf;
	ldns_key *current_key;
	size_t key_count;
	uint16_t i;
	ldns_buffer *sign_buf;
	ldns_rdf *new_owner;

	if (!rrset || FUNC17(rrset) < 1 || !keys) {
		return NULL;
	}

	new_owner = NULL;

	signatures = FUNC14();

	/* prepare a signature and add all the know data
	 * prepare the rrset. Sign this together.  */
	rrset_clone = FUNC11(rrset);
	if (!rrset_clone) {
		return NULL;
	}

	/* make it canonical */
	for(i = 0; i < FUNC17(rrset_clone); i++) {
		FUNC20(FUNC16(rrset_clone, i), 
			FUNC21(FUNC16(rrset, 0)));
		FUNC8(FUNC16(rrset_clone, i));
	}
	/* sort */
	FUNC18(rrset_clone);

	for (key_count = 0;
		key_count < FUNC5(keys);
		key_count++) {
		if (!FUNC6(FUNC4(keys, key_count))) {
			continue;
		}
		sign_buf = FUNC1(LDNS_MAX_PACKETLEN);
		if (!sign_buf) {
			FUNC13(rrset_clone);
			FUNC13(signatures);
			FUNC7(new_owner);
			return NULL;
		}
		b64rdf = NULL;

		current_key = FUNC4(keys, key_count);
		/* sign all RRs with keys that have ZSKbit, !SEPbit.
		   sign DNSKEY RRs with keys that have ZSKbit&SEPbit */
		if (FUNC3(current_key) & LDNS_KEY_ZONE_KEY) {
			current_sig = FUNC2(rrset_clone,
			                                      current_key);

			/* right now, we have: a key, a semi-sig and an rrset. For
			 * which we can create the sig and base64 encode that and
			 * add that to the signature */

			if (FUNC22(sign_buf, current_sig)
			    != LDNS_STATUS_OK) {
				FUNC0(sign_buf);
				/* ERROR */
				FUNC12(rrset_clone);
				FUNC9(current_sig);
				FUNC12(signatures);
				return NULL;
			}

			/* add the rrset in sign_buf */
			if (FUNC10(sign_buf, rrset_clone)
			    != LDNS_STATUS_OK) {
				FUNC0(sign_buf);
				FUNC12(rrset_clone);
				FUNC9(current_sig);
				FUNC12(signatures);
				return NULL;
			}

			b64rdf = FUNC23(sign_buf, current_key);

			if (!b64rdf) {
				/* signing went wrong */
				FUNC12(rrset_clone);
				FUNC9(current_sig);
				FUNC12(signatures);
				return NULL;
			}

			FUNC19(current_sig, b64rdf);

			/* push the signature to the signatures list */
			FUNC15(signatures, current_sig);
		}
		FUNC0(sign_buf); /* restart for the next key */
	}
	FUNC12(rrset_clone);

	return signatures;
}