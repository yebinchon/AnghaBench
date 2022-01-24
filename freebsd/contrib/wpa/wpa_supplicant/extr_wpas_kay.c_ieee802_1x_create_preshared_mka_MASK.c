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
struct wpa_supplicant {TYPE_1__* kay; } ;
struct wpa_ssid {int mka_psk_set; int /*<<< orphan*/  mka_ckn; int /*<<< orphan*/  mka_ckn_len; int /*<<< orphan*/  mka_cak; int /*<<< orphan*/  mka_cak_len; } ;
struct mka_key_name {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  key; } ;
struct mka_key {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {scalar_t__ policy; } ;

/* Variables and functions */
 scalar_t__ DO_NOT_SECURE ; 
 int /*<<< orphan*/  FALSE ; 
 int MKA_PSK_SET ; 
 int /*<<< orphan*/  PSK ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 void* FUNC2 (TYPE_1__*,struct mka_key_name*,struct mka_key_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mka_key_name*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mka_key_name* FUNC5 (int) ; 

void * FUNC6(struct wpa_supplicant *wpa_s,
				       struct wpa_ssid *ssid)
{
	struct mka_key *cak;
	struct mka_key_name *ckn;
	void *res = NULL;

	if ((ssid->mka_psk_set & MKA_PSK_SET) != MKA_PSK_SET)
		goto end;

	ckn = FUNC5(sizeof(*ckn));
	if (!ckn)
		goto end;

	cak = FUNC5(sizeof(*cak));
	if (!cak)
		goto free_ckn;

	if (FUNC0(wpa_s, ssid) < 0 || !wpa_s->kay)
		goto free_cak;

	if (wpa_s->kay->policy == DO_NOT_SECURE)
		goto dealloc;

	cak->len = ssid->mka_cak_len;
	FUNC4(cak->key, ssid->mka_cak, cak->len);

	ckn->len = ssid->mka_ckn_len;
	FUNC4(ckn->name, ssid->mka_ckn, ckn->len);

	res = FUNC2(wpa_s->kay, ckn, cak, 0, PSK, FALSE);
	if (res)
		goto free_cak;

dealloc:
	/* Failed to create MKA */
	FUNC1(wpa_s);
free_cak:
	FUNC3(cak);
free_ckn:
	FUNC3(ckn);
end:
	return res;
}