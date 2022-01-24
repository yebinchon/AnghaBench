#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int idx; size_t key_len; int /*<<< orphan*/  flags; scalar_t__ alg; } ;
struct TYPE_4__ {TYPE_1__ crypt; } ;
struct prism2_hostapd_param {TYPE_2__ u; int /*<<< orphan*/ * sta_addr; int /*<<< orphan*/  cmd; } ;
struct hostap_driver_data {int dummy; } ;
typedef  enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  HOSTAP_CRYPT_ALG_NAME_LEN ; 
 int /*<<< orphan*/  HOSTAP_CRYPT_FLAG_SET_TX_KEY ; 
 int /*<<< orphan*/  PRISM2_SET_ENCRYPTION ; 
#define  WPA_ALG_CCMP 131 
#define  WPA_ALG_NONE 130 
#define  WPA_ALG_TKIP 129 
#define  WPA_ALG_WEP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct hostap_driver_data*,struct prism2_hostapd_param*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(const char *ifname, void *priv,
				     enum wpa_alg alg, const u8 *addr,
				     int key_idx, int set_tx,
				     const u8 *seq, size_t seq_len,
				     const u8 *key, size_t key_len)
{
	struct hostap_driver_data *drv = priv;
	struct prism2_hostapd_param *param;
	u8 *buf;
	size_t blen;
	int ret = 0;

	blen = sizeof(*param) + key_len;
	buf = FUNC6(blen);
	if (buf == NULL)
		return -1;

	param = (struct prism2_hostapd_param *) buf;
	param->cmd = PRISM2_SET_ENCRYPTION;
	if (addr == NULL)
		FUNC3(param->sta_addr, 0xff, ETH_ALEN);
	else
		FUNC2(param->sta_addr, addr, ETH_ALEN);
	switch (alg) {
	case WPA_ALG_NONE:
		FUNC5((char *) param->u.crypt.alg, "NONE",
			   HOSTAP_CRYPT_ALG_NAME_LEN);
		break;
	case WPA_ALG_WEP:
		FUNC5((char *) param->u.crypt.alg, "WEP",
			   HOSTAP_CRYPT_ALG_NAME_LEN);
		break;
	case WPA_ALG_TKIP:
		FUNC5((char *) param->u.crypt.alg, "TKIP",
			   HOSTAP_CRYPT_ALG_NAME_LEN);
		break;
	case WPA_ALG_CCMP:
		FUNC5((char *) param->u.crypt.alg, "CCMP",
			   HOSTAP_CRYPT_ALG_NAME_LEN);
		break;
	default:
		FUNC4(buf);
		return -1;
	}
	param->u.crypt.flags = set_tx ? HOSTAP_CRYPT_FLAG_SET_TX_KEY : 0;
	param->u.crypt.idx = key_idx;
	param->u.crypt.key_len = key_len;
	FUNC2((u8 *) (param + 1), key, key_len);

	if (FUNC1(drv, param, blen)) {
		FUNC7("Failed to set encryption.\n");
		ret = -1;
	}
	FUNC0(buf);

	return ret;
}