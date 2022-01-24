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
typedef  int /*<<< orphan*/  u8 ;
struct mac_acl_entry {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  hostapd_acl_comp ; 
 scalar_t__ FUNC4 (struct mac_acl_entry**,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mac_acl_entry**,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mac_acl_entry*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static int FUNC9(const char *fname,
				       struct mac_acl_entry **acl, int *num)
{
	FILE *f;
	char buf[128], *pos;
	int line = 0;
	u8 addr[ETH_ALEN];
	int vlan_id;

	f = FUNC3(fname, "r");
	if (!f) {
		FUNC8(MSG_ERROR, "MAC list file '%s' not found.", fname);
		return -1;
	}

	while (FUNC2(buf, sizeof(buf), f)) {
		int rem = 0;

		line++;

		if (buf[0] == '#')
			continue;
		pos = buf;
		while (*pos != '\0') {
			if (*pos == '\n') {
				*pos = '\0';
				break;
			}
			pos++;
		}
		if (buf[0] == '\0')
			continue;
		pos = buf;
		if (buf[0] == '-') {
			rem = 1;
			pos++;
		}

		if (FUNC6(pos, addr)) {
			FUNC8(MSG_ERROR, "Invalid MAC address '%s' at "
				   "line %d in '%s'", pos, line, fname);
			FUNC1(f);
			return -1;
		}

		if (rem) {
			FUNC5(acl, num, addr);
			continue;
		}
		vlan_id = 0;
		pos = buf;
		while (*pos != '\0' && *pos != ' ' && *pos != '\t')
			pos++;
		while (*pos == ' ' || *pos == '\t')
			pos++;
		if (*pos != '\0')
			vlan_id = FUNC0(pos);

		if (FUNC4(acl, num, vlan_id, addr) < 0) {
			FUNC1(f);
			return -1;
		}
	}

	FUNC1(f);

	if (*acl)
		FUNC7(*acl, *num, sizeof(**acl), hostapd_acl_comp);

	return 0;
}