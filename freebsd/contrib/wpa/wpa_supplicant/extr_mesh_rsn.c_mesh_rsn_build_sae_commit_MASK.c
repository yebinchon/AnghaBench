#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int /*<<< orphan*/  own_addr; } ;
struct wpa_ssid {char* sae_password; char* passphrase; int /*<<< orphan*/  sae_password_id; } ;
struct sta_info {TYPE_2__* sae; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {TYPE_1__* tmp; } ;
struct TYPE_4__ {scalar_t__ pw_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct wpa_supplicant *wpa_s,
				     struct wpa_ssid *ssid,
				     struct sta_info *sta)
{
	const char *password;

	password = ssid->sae_password;
	if (!password)
		password = ssid->passphrase;
	if (!password) {
		FUNC4(wpa_s, MSG_DEBUG, "SAE: No password available");
		return -1;
	}

	if (FUNC0(wpa_s, sta->sae) < 0) {
		FUNC4(wpa_s, MSG_DEBUG, "SAE: Failed to select group");
		return -1;
	}

	if (sta->sae->tmp && !sta->sae->tmp->pw_id && ssid->sae_password_id) {
		sta->sae->tmp->pw_id = FUNC1(ssid->sae_password_id);
		if (!sta->sae->tmp->pw_id)
			return -1;
	}
	return FUNC3(wpa_s->own_addr, sta->addr,
				  (u8 *) password, FUNC2(password),
				  ssid->sae_password_id,
				  sta->sae);
}