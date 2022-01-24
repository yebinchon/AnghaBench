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
typedef  size_t u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {size_t non_pref_chan_num; struct wpa_mbo_non_pref_channel* non_pref_chan; } ;
struct wpa_mbo_non_pref_channel {scalar_t__ oper_class; scalar_t__ reason; scalar_t__ preference; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,struct wpabuf*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,struct wpabuf*,size_t,size_t) ; 

__attribute__((used)) static void FUNC4(struct wpa_supplicant *wpa_s,
					 struct wpabuf *mbo, int subelement)
{
	u8 i, start = 0;
	struct wpa_mbo_non_pref_channel *start_pref;

	if (!wpa_s->non_pref_chan || !wpa_s->non_pref_chan_num) {
		if (subelement)
			FUNC2(mbo, 4);
		else
			FUNC1(mbo, 0);
		return;
	}
	start_pref = &wpa_s->non_pref_chan[0];

	for (i = 1; i <= wpa_s->non_pref_chan_num; i++) {
		struct wpa_mbo_non_pref_channel *non_pref = NULL;

		if (i < wpa_s->non_pref_chan_num)
			non_pref = &wpa_s->non_pref_chan[i];
		if (!non_pref ||
		    non_pref->oper_class != start_pref->oper_class ||
		    non_pref->reason != start_pref->reason ||
		    non_pref->preference != start_pref->preference) {
			if (subelement)
				FUNC3(wpa_s, mbo,
								  start, i);
			else
				FUNC0(wpa_s, mbo, start,
							    i);

			if (!non_pref)
				return;

			start = i;
			start_pref = non_pref;
		}
	}
}