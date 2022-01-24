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
struct wps_er_ap {scalar_t__ wps; int /*<<< orphan*/ * uuid; } ;
struct wps_er {int skip_set_sel_reg; TYPE_1__* wps; } ;
struct TYPE_2__ {int /*<<< orphan*/  registrar; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wps_er_ap* FUNC1 (struct wps_er*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  wps_er_ap_learn_m1 ; 
 scalar_t__ FUNC2 (struct wps_er_ap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 

int FUNC4(struct wps_er *er, const u8 *uuid, const u8 *addr,
		 const u8 *pin, size_t pin_len)
{
	struct wps_er_ap *ap;

	if (er == NULL)
		return -1;

	ap = FUNC1(er, NULL, uuid, addr);
	if (ap == NULL) {
		FUNC0(MSG_DEBUG, "WPS ER: AP not found for learn "
			   "request");
		return -1;
	}
	if (uuid == NULL)
		uuid = ap->uuid;
	if (ap->wps) {
		FUNC0(MSG_DEBUG, "WPS ER: Pending operation ongoing "
			   "with the AP - cannot start learn");
		return -1;
	}

	if (FUNC2(ap, wps_er_ap_learn_m1) < 0)
		return -1;

	er->skip_set_sel_reg = 1;
	FUNC3(er->wps->registrar, NULL, uuid, pin, pin_len, 0);
	er->skip_set_sel_reg = 0;

	return 0;
}