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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_RDF_TYPE_DNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int*) ; 
 int* FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 

ldns_rdf *
FUNC5(const ldns_rdf *d)
{
	uint8_t label_pos;
	ldns_rdf *chop;

	if (!d) {
		return NULL;
	}

	if (FUNC3(d) != LDNS_RDF_TYPE_DNAME) {
		return NULL;
	}
	if (FUNC0(d) == 0) {
		/* root label */
		return NULL;
	}
	/* 05blaat02nl00 */
	label_pos = FUNC2(d)[0];

	chop = FUNC1(FUNC4(d) - label_pos - 1,
			FUNC2(d) + label_pos + 1);
	return chop;
}