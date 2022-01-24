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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ LDNS_RDF_TYPE_DNAME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 size_t FUNC7 (int /*<<< orphan*/  const*) ; 

ldns_status
FUNC8(ldns_buffer *buffer, const ldns_rdf *rdf)
{
	size_t i;
	uint8_t *rdf_data;

	if (FUNC6(rdf) == LDNS_RDF_TYPE_DNAME) {
		if (FUNC1(buffer, FUNC7(rdf))) {
			rdf_data = FUNC5(rdf);
			for (i = 0; i < FUNC7(rdf); i++) {
				FUNC4(buffer,
				    (uint8_t) FUNC0((int)rdf_data[i]));
			}
		}
	} else {
		/* direct copy for all other types */
		if (FUNC1(buffer, FUNC7(rdf))) {
			FUNC3(buffer,
						   FUNC5(rdf),
						   FUNC7(rdf));
		}
	}
	return FUNC2(buffer);
}