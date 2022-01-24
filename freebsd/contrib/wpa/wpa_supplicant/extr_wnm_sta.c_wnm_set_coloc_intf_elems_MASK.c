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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int coloc_intf_auto_report; struct wpabuf* coloc_intf_elems; scalar_t__ coloc_intf_dialog_token; TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ coloc_intf_reporting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,scalar_t__,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 scalar_t__ FUNC2 (struct wpabuf*) ; 

void FUNC3(struct wpa_supplicant *wpa_s,
			      struct wpabuf *elems)
{
	FUNC1(wpa_s->coloc_intf_elems);
	if (elems && FUNC2(elems) == 0) {
		FUNC1(elems);
		elems = NULL;
	}
	wpa_s->coloc_intf_elems = elems;

	if (wpa_s->conf->coloc_intf_reporting && wpa_s->coloc_intf_elems &&
	    wpa_s->coloc_intf_dialog_token &&
	    (wpa_s->coloc_intf_auto_report == 1 ||
	     wpa_s->coloc_intf_auto_report == 3)) {
		/* TODO: Check that there has not been less than
		 * wpa_s->coloc_intf_timeout * 200 TU from the last report.
		 */
		FUNC0(wpa_s,
					   wpa_s->coloc_intf_dialog_token,
					   wpa_s->coloc_intf_elems);
	}
}