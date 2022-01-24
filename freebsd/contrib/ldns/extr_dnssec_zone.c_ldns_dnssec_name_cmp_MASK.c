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
typedef  int /*<<< orphan*/  ldns_dnssec_name ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(const void *a, const void *b)
{
	ldns_dnssec_name *na = (ldns_dnssec_name *) a;
	ldns_dnssec_name *nb = (ldns_dnssec_name *) b;

	if (na && nb) {
		return FUNC0(FUNC1(na),
							 FUNC1(nb));
	} else if (na) {
		return 1;
	} else if (nb) {
		return -1;
	} else {
		return 0;
	}
}