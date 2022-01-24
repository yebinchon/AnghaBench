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
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char const* LDNS_RESOLV_CONF ; 
 scalar_t__ LDNS_STATUS_FILE_ERR ; 
 scalar_t__ LDNS_STATUS_NULL ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

ldns_status
FUNC4(ldns_resolver **res, const char *filename)
{
	ldns_resolver *r;
	FILE *fp;
	ldns_status s;

	if (!filename) {
		fp = FUNC1(LDNS_RESOLV_CONF, "r");

	} else {
		fp = FUNC1(filename, "r");
	}
	if (!fp) {
		return LDNS_STATUS_FILE_ERR;
	}

	s = FUNC3(&r, fp);
	FUNC0(fp);
	if (s == LDNS_STATUS_OK) {
		if (res) {
			*res = r;
			return LDNS_STATUS_OK;
		} else  {
			FUNC2(r);
			return LDNS_STATUS_NULL;
		}
	}
	return s;
}