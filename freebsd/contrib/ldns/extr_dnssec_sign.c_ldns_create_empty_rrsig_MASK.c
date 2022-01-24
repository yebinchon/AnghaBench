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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_key ;

/* Variables and functions */
 scalar_t__ LDNS_DEFAULT_EXP_TIME ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_ALG ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_INT16 ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_INT32 ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_INT8 ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_TIME ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_TYPE ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *) ; 

ldns_rr *
FUNC30(const ldns_rr_list *rrset,
                        const ldns_key *current_key)
{
	uint32_t orig_ttl;
	ldns_rr_class orig_class;
	time_t now;
	ldns_rr *current_sig;
	uint8_t label_count;
	ldns_rdf *signame;

	label_count = FUNC2(FUNC16(FUNC14(rrset,
	                                                   0)));
        /* RFC4035 2.2: not counting the leftmost label if it is a wildcard */
        if(FUNC1(FUNC16(FUNC14(rrset, 0))))
                label_count --;

	current_sig = FUNC15(LDNS_RR_TYPE_RRSIG);

	/* set the type on the new signature */
	orig_ttl = FUNC28(FUNC14(rrset, 0));
	orig_class = FUNC12(FUNC14(rrset, 0));

	FUNC27(current_sig, orig_ttl);
	FUNC25(current_sig, orig_class);
	FUNC26(current_sig,
			  FUNC11(
			       FUNC16(
				    FUNC14(rrset,
						    0))));

	/* fill in what we know of the signature */

	/* set the orig_ttl */
	(void)FUNC22(
		   current_sig,
		   FUNC9(LDNS_RDF_TYPE_INT32,
					 orig_ttl));
	/* the signers name */
	signame = FUNC11(FUNC7(current_key));
	FUNC0(signame);
	(void)FUNC23(
			current_sig,
			signame);
	/* label count - get it from the first rr in the rr_list */
	(void)FUNC21(
			current_sig,
			FUNC10(LDNS_RDF_TYPE_INT8,
			                     label_count));
	/* inception, expiration */
	now = FUNC29(NULL);
	if (FUNC5(current_key) != 0) {
		(void)FUNC19(
				current_sig,
				FUNC9(
				    LDNS_RDF_TYPE_TIME,
				    FUNC5(current_key)));
	} else {
		(void)FUNC19(
				current_sig,
				FUNC9(LDNS_RDF_TYPE_TIME, now));
	}
	if (FUNC4(current_key) != 0) {
		(void)FUNC18(
				current_sig,
				FUNC9(
				    LDNS_RDF_TYPE_TIME,
				    FUNC4(current_key)));
	} else {
		(void)FUNC18(
			     current_sig,
				FUNC9(
				    LDNS_RDF_TYPE_TIME,
				    now + LDNS_DEFAULT_EXP_TIME));
	}

	(void)FUNC20(
		   current_sig,
		   FUNC8(LDNS_RDF_TYPE_INT16,
		                         FUNC6(current_key)));

	(void)FUNC17(
			current_sig,
			FUNC10(
			    LDNS_RDF_TYPE_ALG,
			    FUNC3(current_key)));

	(void)FUNC24(
			current_sig,
			FUNC8(
			    LDNS_RDF_TYPE_TYPE,
			    FUNC13(FUNC14(rrset,
			                                     0))));
	return current_sig;
}