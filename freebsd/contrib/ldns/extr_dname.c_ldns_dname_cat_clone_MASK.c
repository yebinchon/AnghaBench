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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LDNS_RDF_TYPE_DNAME ; 
 int FUNC1 (int,int) ; 
 int buf ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int,int) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int uint8_t ; 

ldns_rdf *
FUNC8(const ldns_rdf *rd1, const ldns_rdf *rd2)
{
	ldns_rdf *new;
	uint16_t new_size;
	uint8_t *buf;
	uint16_t left_size;

	if (FUNC4(rd1) != LDNS_RDF_TYPE_DNAME ||
			FUNC4(rd2) != LDNS_RDF_TYPE_DNAME) {
		return NULL;
	}

	/* remove root label if it is present at the end of the left
	 * rd, by reducing the size with 1
	 */
	left_size = FUNC6(rd1);
	if (FUNC2(rd1)) {
		left_size--;
	}

	/* we overwrite the nullbyte of rd1 */
	new_size = left_size + FUNC6(rd2);
	buf = FUNC1(uint8_t, new_size);
	if (!buf) {
		return NULL;
	}

	/* put the two dname's after each other */
	FUNC7(buf, FUNC3(rd1), left_size);
	FUNC7(buf + left_size, FUNC3(rd2), FUNC6(rd2));

	new = FUNC5(LDNS_RDF_TYPE_DNAME, new_size, buf);

	FUNC0(buf);
	return new;
}