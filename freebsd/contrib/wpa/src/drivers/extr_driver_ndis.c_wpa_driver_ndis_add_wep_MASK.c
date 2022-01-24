#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_driver_ndis_data {int dummy; } ;
struct TYPE_4__ {size_t Length; int KeyIndex; size_t KeyLength; int /*<<< orphan*/  KeyMaterial; } ;
typedef  TYPE_1__ NDIS_802_11_WEP ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  OID_802_11_ADD_WEP ; 
 int FUNC0 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 TYPE_1__* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC5(struct wpa_driver_ndis_data *drv,
				   int pairwise, int key_idx, int set_tx,
				   const u8 *key, size_t key_len)
{
	NDIS_802_11_WEP *wep;
	size_t len;
	int res;

	len = 12 + key_len;
	wep = FUNC3(len);
	if (wep == NULL)
		return -1;
	wep->Length = len;
	wep->KeyIndex = key_idx;
	if (set_tx)
		wep->KeyIndex |= 1 << 31;
#if 0 /* Setting bit30 does not seem to work with some NDIS drivers */
	if (pairwise)
		wep->KeyIndex |= 1 << 30;
#endif
	wep->KeyLength = key_len;
	FUNC2(wep->KeyMaterial, key, key_len);

	FUNC4(MSG_MSGDUMP, "NDIS: OID_802_11_ADD_WEP",
			(u8 *) wep, len);
	res = FUNC0(drv, OID_802_11_ADD_WEP, (char *) wep, len);

	FUNC1(wep);

	return res;
}