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
struct TYPE_2__ {size_t ft_ies_len; int /*<<< orphan*/ * ft_ies; int /*<<< orphan*/  mobility_domain; scalar_t__ ft_used; } ;
struct wpa_supplicant {TYPE_1__ sme; } ;

/* Variables and functions */
 int /*<<< orphan*/  MOBILITY_DOMAIN_ID_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC5(struct wpa_supplicant *wpa_s, const u8 *md,
		      const u8 *ies, size_t ies_len)
{
	if (md == NULL || ies == NULL) {
		FUNC3(wpa_s, MSG_DEBUG, "SME: Remove mobility domain");
		FUNC0(wpa_s->sme.ft_ies);
		wpa_s->sme.ft_ies = NULL;
		wpa_s->sme.ft_ies_len = 0;
		wpa_s->sme.ft_used = 0;
		return 0;
	}

	FUNC1(wpa_s->sme.mobility_domain, md, MOBILITY_DOMAIN_ID_LEN);
	FUNC4(MSG_DEBUG, "SME: FT IEs", ies, ies_len);
	FUNC0(wpa_s->sme.ft_ies);
	wpa_s->sme.ft_ies = FUNC2(ies, ies_len);
	if (wpa_s->sme.ft_ies == NULL)
		return -1;
	wpa_s->sme.ft_ies_len = ies_len;
	return 0;
}