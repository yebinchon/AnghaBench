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
struct hostapd_wpa_psk {int dummy; } ;
struct hostapd_ssid {TYPE_1__* wpa_psk; int /*<<< orphan*/  ssid_len; scalar_t__ ssid; scalar_t__ wpa_passphrase; } ;
struct TYPE_2__ {int /*<<< orphan*/  psk; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PMK_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct hostapd_ssid *ssid)
{
	ssid->wpa_psk = FUNC1(sizeof(struct hostapd_wpa_psk));
	if (ssid->wpa_psk == NULL) {
		FUNC6(MSG_ERROR, "Unable to alloc space for PSK");
		return -1;
	}
	FUNC3(MSG_DEBUG, "SSID",
			  (u8 *) ssid->ssid, ssid->ssid_len);
	FUNC4(MSG_DEBUG, "PSK (ASCII passphrase)",
			      (u8 *) ssid->wpa_passphrase,
			      FUNC0(ssid->wpa_passphrase));
	FUNC2(ssid->wpa_passphrase,
		    ssid->ssid, ssid->ssid_len,
		    4096, ssid->wpa_psk->psk, PMK_LEN);
	FUNC5(MSG_DEBUG, "PSK (from passphrase)",
			ssid->wpa_psk->psk, PMK_LEN);
	return 0;
}