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
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(const ldns_rdf *dname, const ldns_rdf *wildcard)
{
	ldns_rdf *wc_chopped;
	int result;
	/* check whether it really is a wildcard */
	if (FUNC2(wildcard)) {
		/* ok, so the dname needs to be a subdomain of the wildcard
		 * without the *
		 */
		wc_chopped = FUNC3(wildcard);
		result = (int) FUNC1(dname, wc_chopped);
		FUNC4(wc_chopped);
	} else {
		result = (FUNC0(dname, wildcard) == 0);
	}
	return result;
}