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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int untagged; int notempty; } ;
struct mac_acl_entry {TYPE_1__ vlan_id; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct mac_acl_entry* FUNC2 (struct mac_acl_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(struct mac_acl_entry **acl, int *num,
			    int vlan_id, const u8 *addr)
{
	struct mac_acl_entry *newacl;

	newacl = FUNC2(*acl, *num + 1, sizeof(**acl));
	if (!newacl) {
		FUNC3(MSG_ERROR, "MAC list reallocation failed");
		return -1;
	}

	*acl = newacl;
	FUNC0((*acl)[*num].addr, addr, ETH_ALEN);
	FUNC1(&(*acl)[*num].vlan_id, 0, sizeof((*acl)[*num].vlan_id));
	(*acl)[*num].vlan_id.untagged = vlan_id;
	(*acl)[*num].vlan_id.notempty = !!vlan_id;
	(*num)++;

	return 0;
}