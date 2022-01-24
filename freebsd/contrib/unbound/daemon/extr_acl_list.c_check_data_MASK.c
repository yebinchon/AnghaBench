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
typedef  int /*<<< orphan*/  uint8_t ;
struct config_strlist {char const* str; } ;
typedef  int /*<<< orphan*/  rr ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int LDNS_RR_BUF_SIZE ; 
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static int
FUNC6(const char* data, const struct config_strlist* head)
{
	char buf[65536];
	uint8_t rr[LDNS_RR_BUF_SIZE];
	size_t len = sizeof(rr);
	int res;
	/* '.' is sufficient for validation, and it makes the call to
	 * sldns_wirerr_get_type() simpler below. */
	FUNC5(buf, sizeof(buf), "%s %s", ".", data);
	res = FUNC3(buf, rr, &len, NULL, 3600, NULL, 0,
		NULL, 0);

	/* Reject it if we would end up having CNAME and other data (including
	 * another CNAME) for the same tag. */
	if(res == 0 && head) {
		const char* err_data = NULL;

		if(FUNC4(rr, len, 1) == LDNS_RR_TYPE_CNAME) {
			/* adding CNAME while other data already exists. */
			err_data = data;
		} else {
			FUNC5(buf, sizeof(buf), "%s %s", ".", head->str);
			len = sizeof(rr);
			res = FUNC3(buf, rr, &len, NULL, 3600,
				NULL, 0, NULL, 0);
			if(res != 0) {
				/* This should be impossible here as head->str
				 * has been validated, but we check it just in
				 * case. */
				return 0;
			}
			if(FUNC4(rr, len, 1) ==
				LDNS_RR_TYPE_CNAME) /* already have CNAME */
				err_data = head->str;
		}
		if(err_data) {
			FUNC1("redirect tag data '%s' must not coexist with "
				"other data.", err_data);
			return 0;
		}
	}
	if(res == 0)
		return 1;
	FUNC1("rr data [char %d] parse error %s",
		(int)FUNC0(res)-13,
		FUNC2(res));
	return 0;
}