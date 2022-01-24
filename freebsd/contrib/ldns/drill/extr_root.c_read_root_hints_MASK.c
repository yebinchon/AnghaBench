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
typedef  int /*<<< orphan*/  ldns_zone ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

ldns_rr_list *
FUNC14(const char *filename)
{
	FILE *fp = NULL;
	int line_nr = 0;
	ldns_zone *z;
	ldns_status status;
	ldns_rr_list *addresses = NULL;
	ldns_rr *rr;
	size_t i;

	fp = FUNC1(filename, "r");
	if (!fp) {
		FUNC2(stderr, "Unable to open %s for reading: %s\n", filename, FUNC13(errno));
		return NULL;
	}

	status = FUNC11(&z, fp, NULL, 0, 0, &line_nr);
	FUNC0(fp);
	if (status != LDNS_STATUS_OK) {
		FUNC2(stderr, "Error reading root hints file: %s\n", FUNC3(status));
		return NULL;
	} else {
		addresses = FUNC6();
		for (i = 0; i < FUNC9(FUNC12(z)); i++) { 
			rr = FUNC8(FUNC12(z), i);
			/*if ((address_family == 0 || address_family == 1) &&
			*/
			if ( FUNC5(rr) == LDNS_RR_TYPE_A ) {
				FUNC7(addresses, FUNC4(rr));
			}
			/*if ((address_family == 0 || address_family == 2) &&*/
			if ( FUNC5(rr) == LDNS_RR_TYPE_AAAA) {
				FUNC7(addresses, FUNC4(rr));
			}
		}
		FUNC10(z);
		return addresses;
	}
}