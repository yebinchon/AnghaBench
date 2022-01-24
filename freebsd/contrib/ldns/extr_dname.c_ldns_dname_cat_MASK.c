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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  const ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_RDF_TYPE_DNAME ; 
 int /*<<< orphan*/  LDNS_STATUS_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_MEM_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 int newd ; 
 int uint8_t ; 

ldns_status
FUNC8(ldns_rdf *rd1, const ldns_rdf *rd2)
{
	uint16_t left_size;
	uint16_t size;
	uint8_t* newd;

	if (FUNC3(rd1) != LDNS_RDF_TYPE_DNAME ||
			FUNC3(rd2) != LDNS_RDF_TYPE_DNAME) {
		return LDNS_STATUS_ERR;
	}

	/* remove root label if it is present at the end of the left
	 * rd, by reducing the size with 1
	 */
	left_size = FUNC6(rd1);
	if (FUNC1(rd1)) {
		left_size--;
	}

	size = left_size + FUNC6(rd2);
	newd = FUNC0(FUNC2(rd1), uint8_t, size);
	if(!newd) {
		return LDNS_STATUS_MEM_ERR;
	}

	FUNC4(rd1, newd);
	FUNC7(FUNC2(rd1) + left_size, FUNC2(rd2),
			FUNC6(rd2));
	FUNC5(rd1, size);

	return LDNS_STATUS_OK;
}