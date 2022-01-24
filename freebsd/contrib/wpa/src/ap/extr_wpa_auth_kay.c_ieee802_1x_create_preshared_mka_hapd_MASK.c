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
struct sta_info {int dummy; } ;
struct mka_key_name {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  key; } ;
struct mka_key {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  key; } ;
struct hostapd_data {TYPE_2__* kay; TYPE_1__* conf; } ;
struct TYPE_4__ {scalar_t__ policy; } ;
struct TYPE_3__ {int mka_psk_set; int /*<<< orphan*/  mka_ckn; int /*<<< orphan*/  mka_ckn_len; int /*<<< orphan*/  mka_cak; int /*<<< orphan*/  mka_cak_len; } ;

/* Variables and functions */
 scalar_t__ DO_NOT_SECURE ; 
 int MKA_PSK_SET ; 
 int /*<<< orphan*/  PSK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct hostapd_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*) ; 
 void* FUNC2 (TYPE_2__*,struct mka_key_name*,struct mka_key_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mka_key_name*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mka_key_name* FUNC5 (int) ; 

void * FUNC6(struct hostapd_data *hapd,
					    struct sta_info *sta)
{
	struct mka_key *cak;
	struct mka_key_name *ckn;
	void *res = NULL;

	if ((hapd->conf->mka_psk_set & MKA_PSK_SET) != MKA_PSK_SET)
		goto end;

	ckn = FUNC5(sizeof(*ckn));
	if (!ckn)
		goto end;

	cak = FUNC5(sizeof(*cak));
	if (!cak)
		goto free_ckn;

	if (FUNC0(hapd, sta) < 0 || !hapd->kay)
		goto free_cak;

	if (hapd->kay->policy == DO_NOT_SECURE)
		goto dealloc;

	cak->len = hapd->conf->mka_cak_len;
	FUNC4(cak->key, hapd->conf->mka_cak, cak->len);

	ckn->len = hapd->conf->mka_ckn_len;;
	FUNC4(ckn->name, hapd->conf->mka_ckn, ckn->len);

	res = FUNC2(hapd->kay, ckn, cak, 0, PSK, TRUE);
	if (res)
		goto free_cak;

dealloc:
	/* Failed to create MKA */
	FUNC1(hapd);
free_cak:
	FUNC3(cak);
free_ckn:
	FUNC3(ckn);
end:
	return res;
}