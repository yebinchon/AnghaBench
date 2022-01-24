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
typedef  int u16 ;
struct wpa_ptk {int /*<<< orphan*/  kck_len; int /*<<< orphan*/  kck; } ;
struct wpa_eapol_key {int /*<<< orphan*/  key_info; } ;
struct ieee802_1x_hdr {int dummy; } ;

/* Variables and functions */
 int WPA_EAPOL_KEY_MIC_MAX_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int WPA_KEY_INFO_TYPE_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int,size_t) ; 

__attribute__((used)) static int FUNC6(int akmp, size_t pmk_len, struct wpa_ptk *PTK,
			      u8 *data, size_t data_len)
{
	struct ieee802_1x_hdr *hdr;
	struct wpa_eapol_key *key;
	u16 key_info;
	int ret = 0;
	u8 mic[WPA_EAPOL_KEY_MIC_MAX_LEN], *mic_pos;
	size_t mic_len = FUNC5(akmp, pmk_len);

	if (data_len < sizeof(*hdr) + sizeof(*key))
		return -1;

	hdr = (struct ieee802_1x_hdr *) data;
	key = (struct wpa_eapol_key *) (hdr + 1);
	mic_pos = (u8 *) (key + 1);
	key_info = FUNC0(key->key_info);
	FUNC2(mic, mic_pos, mic_len);
	FUNC3(mic_pos, 0, mic_len);
	if (FUNC4(PTK->kck, PTK->kck_len, akmp,
			      key_info & WPA_KEY_INFO_TYPE_MASK,
			      data, data_len, mic_pos) ||
	    FUNC1(mic, mic_pos, mic_len) != 0)
		ret = -1;
	FUNC2(mic_pos, mic, mic_len);
	return ret;
}