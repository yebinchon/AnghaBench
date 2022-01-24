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
struct wpa_supplicant {int /*<<< orphan*/ * current_ssid; } ;
struct eapol_test_data {struct wpa_supplicant* wpa_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void FUNC5(void *ctx, const u8 *id, size_t len)
{
	struct eapol_test_data *e = ctx;
	struct wpa_supplicant *wpa_s = e->wpa_s;
	char *str;
	int res;

	FUNC3(MSG_DEBUG, "EAP method updated anonymous_identity",
			  id, len);

	if (wpa_s->current_ssid == NULL)
		return;

	if (id == NULL) {
		if (FUNC2(wpa_s->current_ssid, "anonymous_identity",
				   "NULL", 0) < 0)
			return;
	} else {
		str = FUNC1(len * 2 + 1);
		if (str == NULL)
			return;
		FUNC4(str, len * 2 + 1, id, len);
		res = FUNC2(wpa_s->current_ssid, "anonymous_identity",
				     str, 0);
		FUNC0(str);
		if (res < 0)
			return;
	}
}