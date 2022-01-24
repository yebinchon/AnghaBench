#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int untagged; int notempty; } ;
struct hostapd_vlan {int vlan_id; struct hostapd_vlan* next; int /*<<< orphan*/  bridge; int /*<<< orphan*/  ifname; TYPE_1__ vlan_desc; } ;
struct hostapd_bss_config {struct hostapd_vlan* vlan; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IFNAMSIZ ; 
 int MAX_VLAN_ID ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int VLAN_ID_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 struct hostapd_vlan* FUNC5 (int) ; 
 int FUNC6 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC8(struct hostapd_bss_config *bss,
					 const char *fname)
{
	FILE *f;
	char buf[128], *pos, *pos2, *pos3;
	int line = 0, vlan_id;
	struct hostapd_vlan *vlan;

	f = FUNC2(fname, "r");
	if (!f) {
		FUNC7(MSG_ERROR, "VLAN file '%s' not readable.", fname);
		return -1;
	}

	while (FUNC1(buf, sizeof(buf), f)) {
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

		if (buf[0] == '*') {
			vlan_id = VLAN_ID_WILDCARD;
			pos = buf + 1;
		} else {
			vlan_id = FUNC6(buf, &pos, 10);
			if (buf == pos || vlan_id < 1 ||
			    vlan_id > MAX_VLAN_ID) {
				FUNC7(MSG_ERROR, "Invalid VLAN ID at "
					   "line %d in '%s'", line, fname);
				FUNC0(f);
				return -1;
			}
		}

		while (*pos == ' ' || *pos == '\t')
			pos++;
		pos2 = pos;
		while (*pos2 != ' ' && *pos2 != '\t' && *pos2 != '\0')
			pos2++;

		if (*pos2 != '\0')
			*(pos2++) = '\0';

		if (*pos == '\0' || FUNC4(pos) > IFNAMSIZ) {
			FUNC7(MSG_ERROR, "Invalid VLAN ifname at line %d "
				   "in '%s'", line, fname);
			FUNC0(f);
			return -1;
		}

		while (*pos2 == ' ' || *pos2 == '\t')
			pos2++;
		pos3 = pos2;
		while (*pos3 != ' ' && *pos3 != '\t' && *pos3 != '\0')
			pos3++;
		*pos3 = '\0';

		vlan = FUNC5(sizeof(*vlan));
		if (vlan == NULL) {
			FUNC7(MSG_ERROR, "Out of memory while reading "
				   "VLAN interfaces from '%s'", fname);
			FUNC0(f);
			return -1;
		}

		vlan->vlan_id = vlan_id;
		vlan->vlan_desc.untagged = vlan_id;
		vlan->vlan_desc.notempty = !!vlan_id;
		FUNC3(vlan->ifname, pos, sizeof(vlan->ifname));
		FUNC3(vlan->bridge, pos2, sizeof(vlan->bridge));
		vlan->next = bss->vlan;
		bss->vlan = vlan;
	}

	FUNC0(f);

	return 0;
}