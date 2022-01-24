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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int enable_oce; TYPE_1__* conf; } ;
struct TYPE_2__ {int mbo_cell_capa; } ;

/* Variables and functions */
 int MBO_ATTR_ID_CELL_DATA_CAPA ; 
 int MBO_IE_HEADER ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int OCE_ATTR_ID_CAPA_IND ; 
 int OCE_RELEASE ; 
 int OCE_STA ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,struct wpabuf*,int /*<<< orphan*/ ) ; 

int FUNC8(struct wpa_supplicant *wpa_s, u8 *buf, size_t len,
		int add_oce_capa)
{
	struct wpabuf *mbo;
	int res;

	if (len < MBO_IE_HEADER + 3 + 7 +
	    ((wpa_s->enable_oce & OCE_STA) ? 3 : 0))
		return 0;

	/* Leave room for the MBO IE header */
	mbo = FUNC2(len - MBO_IE_HEADER);
	if (!mbo)
		return 0;

	/* Add non-preferred channels attribute */
	FUNC7(wpa_s, mbo, 0);

	/*
	 * Send cellular capabilities attribute even if AP does not advertise
	 * cellular capabilities.
	 */
	FUNC6(mbo, MBO_ATTR_ID_CELL_DATA_CAPA);
	FUNC6(mbo, 1);
	FUNC6(mbo, wpa_s->conf->mbo_cell_capa);

	/* Add OCE capability indication attribute if OCE is enabled */
	if ((wpa_s->enable_oce & OCE_STA) && add_oce_capa) {
		FUNC6(mbo, OCE_ATTR_ID_CAPA_IND);
		FUNC6(mbo, 1);
		FUNC6(mbo, OCE_RELEASE);
	}

	res = FUNC0(buf, len, FUNC4(mbo), FUNC5(mbo));
	if (!res)
		FUNC1(MSG_ERROR, "Failed to add MBO/OCE IE");

	FUNC3(mbo);
	return res;
}