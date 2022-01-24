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
typedef  int /*<<< orphan*/  br_x509_pkey ;
typedef  int /*<<< orphan*/  br_x509_certificate ;
typedef  int /*<<< orphan*/  br_name_element ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  forbidden_anchors ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,size_t*) ; 
 int /*<<< orphan*/  trust_anchors ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static br_x509_pkey *
FUNC8(const char *certs,
    br_name_element *elts, size_t num_elts)
{
	br_x509_certificate *xcs;
	br_x509_pkey *pk;
	size_t num;

	pk = NULL;

	FUNC5();
	xcs = FUNC3(certs, &num);
	if (xcs == NULL) {
		FUNC4("cannot read certificates\n");
		return (NULL);
	}

	/*
	 * Check if either
	 * 1. There is a direct match between cert from forbidden_anchors
	 * and a cert from chain.
	 * 2. CA that signed the chain is found in forbidden_anchors.
	 */
	if (FUNC0(forbidden_anchors) > 0)
		pk = FUNC6(xcs, num, elts, num_elts, &forbidden_anchors);
	if (pk != NULL) {
		FUNC4("Certificate is on forbidden list\n");
		FUNC7(pk);
		pk = NULL;
		goto out;
	}

	pk = FUNC6(xcs, num, elts, num_elts, &trust_anchors);
	if (pk == NULL)
		goto out;

	/*
	 * Check if hash of tbs part of any certificate in chain
	 * is on the forbidden list.
	 */
	if (FUNC1(xcs, num)) {
		FUNC4("Certificate hash is on forbidden list\n");
		FUNC7(pk);
		pk = NULL;
	}
out:
	FUNC2(xcs, num);
	return (pk);
}