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
typedef  int /*<<< orphan*/  const ldns_rdf ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 scalar_t__ LDNS_RDF_TYPE_DNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 

bool
FUNC7(const ldns_rdf *sub, const ldns_rdf *parent)
{
	uint8_t sub_lab;
	uint8_t par_lab;
	int8_t i, j;
	ldns_rdf *tmp_sub = NULL;
	ldns_rdf *tmp_par = NULL;
    ldns_rdf *sub_clone;
    ldns_rdf *parent_clone;
    bool result = true;

	if (FUNC6(sub) != LDNS_RDF_TYPE_DNAME ||
			FUNC6(parent) != LDNS_RDF_TYPE_DNAME ||
			FUNC4(sub, parent) == 0) {
		return false;
	}

    /* would be nicer if we do not have to clone... */
    sub_clone = FUNC1(sub, 0);
    parent_clone = FUNC1(parent, 0);
    FUNC0(sub_clone);
    FUNC0(parent_clone);

	sub_lab = FUNC3(sub_clone);
	par_lab = FUNC3(parent_clone);

	/* if sub sits above parent, it cannot be a child/sub domain */
	if (sub_lab < par_lab) {
		result = false;
	} else {
		/* check all labels the from the parent labels, from right to left.
		 * When they /all/ match we have found a subdomain
		 */
		j = sub_lab - 1; /* we count from zero, thank you */
		for (i = par_lab -1; i >= 0; i--) {
			tmp_sub = FUNC2(sub_clone, j);
			tmp_par = FUNC2(parent_clone, i);
			if (!tmp_sub || !tmp_par) {
				/* deep free does null check */
				FUNC5(tmp_sub);
				FUNC5(tmp_par);
				result = false;
				break;
			}

			if (FUNC4(tmp_sub, tmp_par) != 0) {
				/* they are not equal */
				FUNC5(tmp_sub);
				FUNC5(tmp_par);
				result = false;
				break;
			}
			FUNC5(tmp_sub);
			FUNC5(tmp_par);
			j--;
		}
	}
	FUNC5(sub_clone);
	FUNC5(parent_clone);
	return result;
}