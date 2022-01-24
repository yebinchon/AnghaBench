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
struct mac_acl_entry {int /*<<< orphan*/  addr; } ;
struct hostapd_data {int dummy; } ;
struct hostapd_acl_params {int num_mac_acl; int /*<<< orphan*/  acl_policy; TYPE_1__* mac_acl; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC0 (struct hostapd_data*,struct hostapd_acl_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_acl_params*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hostapd_acl_params* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct hostapd_data *hapd,
				struct mac_acl_entry *mac_acl,
				int n_entries, u8 accept_acl)
{
	struct hostapd_acl_params *acl_params;
	int i, err;

	acl_params = FUNC3(sizeof(*acl_params) +
			       (n_entries * sizeof(acl_params->mac_acl[0])));
	if (!acl_params)
		return -ENOMEM;

	for (i = 0; i < n_entries; i++)
		FUNC2(acl_params->mac_acl[i].addr, mac_acl[i].addr,
			  ETH_ALEN);

	acl_params->acl_policy = accept_acl;
	acl_params->num_mac_acl = n_entries;

	err = FUNC0(hapd, acl_params);

	FUNC1(acl_params);

	return err;
}