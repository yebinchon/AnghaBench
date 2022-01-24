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
struct vlan_description {int dummy; } ;
struct mac_acl_entry {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  hostapd_acl_comp ; 
 int FUNC1 (struct mac_acl_entry**,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_acl_entry*,int,int /*<<< orphan*/ *,struct vlan_description*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mac_acl_entry*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mac_acl_entry **acl, int *num,
					  const char *cmd)
{
	u8 addr[ETH_ALEN];
	struct vlan_description vlan_id;
	int ret = 0, vlanid = 0;
	const char *pos;

	if (FUNC3(cmd, addr))
		return -1;

	pos = FUNC4(cmd, "VLAN_ID=");
	if (pos)
		vlanid = FUNC0(pos + 8);

	if (!FUNC2(*acl, *num, addr, &vlan_id)) {
		ret = FUNC1(acl, num, vlanid, addr);
		if (ret != -1 && *acl)
			FUNC5(*acl, *num, sizeof(**acl), hostapd_acl_comp);
	}

	return ret < 0 ? -1 : 0;
}