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
struct sta_info {TYPE_1__* gas_dialog; } ;
struct hostapd_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ valid; } ;

/* Variables and functions */
 int GAS_DIALOG_MAX ; 
 struct sta_info* FUNC0 (struct hostapd_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct hostapd_data *hapd,
				  const u8 *sta_addr)
{
	struct sta_info *sta;
	int i;

	sta = FUNC0(hapd, sta_addr);
	if (sta == NULL || sta->gas_dialog == NULL)
		return;

	for (i = 0; i < GAS_DIALOG_MAX; i++) {
		if (sta->gas_dialog[i].valid)
			return;
	}

	FUNC1(sta->gas_dialog);
	sta->gas_dialog = NULL;
}