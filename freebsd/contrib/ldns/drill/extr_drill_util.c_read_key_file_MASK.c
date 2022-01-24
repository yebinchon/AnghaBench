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
typedef  int /*<<< orphan*/  line ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LDNS_MAX_LINELEN ; 
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

ldns_status
FUNC10(const char *filename, ldns_rr_list *key_list, bool silently)
{
	int line_len = 0;
	int line_nr = 0;
	int key_count = 0;
	char line[LDNS_MAX_LINELEN];
	ldns_status status;
	FILE *input_file;
	ldns_rr *rr;

	input_file = FUNC1(filename, "r");
	if (!input_file) {
		if (! silently) {
			FUNC2(stderr, "Error opening %s: %s\n",
				filename, FUNC9(errno));
		}
		return LDNS_STATUS_ERR;
	}
	while (line_len >= 0) {
		line_len = (int) FUNC8(input_file, line, sizeof(line));
		line_nr++;
		if (line_len > 0 && line[0] != ';') {
			status = FUNC7(&rr, line, 0, NULL, NULL);
			if (status != LDNS_STATUS_OK) {
				if (! silently) {
					FUNC2(stderr,
						"Error parsing DNSKEY RR "
						"in line %d: %s\n", line_nr,
						FUNC3(status)
						);
				}
			} else if (FUNC5(rr) == LDNS_RR_TYPE_DNSKEY || 
					   FUNC5(rr) == LDNS_RR_TYPE_DS) {
				FUNC6(key_list, rr);
				key_count++;
			} else {
				FUNC4(rr);
			}
		}
	}
	FUNC0(input_file);
	if (key_count > 0) {
		return LDNS_STATUS_OK;
	} else {
		/*fprintf(stderr, "No keys read\n");*/
		return LDNS_STATUS_ERR;
	}
}