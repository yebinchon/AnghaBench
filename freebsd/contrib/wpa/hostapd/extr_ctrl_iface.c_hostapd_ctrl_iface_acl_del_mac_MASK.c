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
 scalar_t__ FUNC0 (struct mac_acl_entry*,int,int /*<<< orphan*/ *,struct vlan_description*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_acl_entry**,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mac_acl_entry **acl, int *num,
					  const char *txtaddr)
{
	u8 addr[ETH_ALEN];
	struct vlan_description vlan_id;

	if (!(*num))
		return 0;

	if (FUNC2(txtaddr, addr))
		return -1;

	if (FUNC0(*acl, *num, addr, &vlan_id))
		FUNC1(acl, num, addr);

	return 0;
}