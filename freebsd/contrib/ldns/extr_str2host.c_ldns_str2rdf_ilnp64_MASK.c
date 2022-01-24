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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RDF_TYPE_ILNP64 ; 
 int /*<<< orphan*/  LDNS_STATUS_INVALID_ILNP64 ; 
 int /*<<< orphan*/  LDNS_STATUS_MEM_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int FUNC2 (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

ldns_status
FUNC5(ldns_rdf **rd, const char *str)
{
	unsigned int a, b, c, d;
	uint16_t shorts[4];
	int l;

	if (FUNC2(str, "%4x:%4x:%4x:%4x%n", &a, &b, &c, &d, &l) != 4 ||
			l != (int)FUNC3(str) || /* more data to read */
			FUNC4(str, "+-")       /* signed hexes */
			) {
		return LDNS_STATUS_INVALID_ILNP64;
	} else {
		shorts[0] = FUNC0(a);
		shorts[1] = FUNC0(b);
		shorts[2] = FUNC0(c);
		shorts[3] = FUNC0(d);
		*rd = FUNC1(
			LDNS_RDF_TYPE_ILNP64, 4 * sizeof(uint16_t), &shorts);
	}
	return *rd ? LDNS_STATUS_OK : LDNS_STATUS_MEM_ERR;
}