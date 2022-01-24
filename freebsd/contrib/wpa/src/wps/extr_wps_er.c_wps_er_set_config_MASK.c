#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wps_er_ap {TYPE_1__* ap_settings; } ;
struct wps_er {int dummy; } ;
struct wps_credential {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * cred_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct wps_credential const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct wps_er_ap* FUNC3 (struct wps_er*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

int FUNC4(struct wps_er *er, const u8 *uuid, const u8 *addr,
		      const struct wps_credential *cred)
{
	struct wps_er_ap *ap;

	if (er == NULL)
		return -1;

	ap = FUNC3(er, NULL, uuid, addr);
	if (ap == NULL) {
		FUNC2(MSG_DEBUG, "WPS ER: AP not found for set config "
			   "request");
		return -1;
	}

	FUNC0(ap->ap_settings);
	ap->ap_settings = FUNC1(cred, sizeof(*cred));
	if (ap->ap_settings == NULL)
		return -1;
	ap->ap_settings->cred_attr = NULL;
	FUNC2(MSG_DEBUG, "WPS ER: Updated local AP settings based set "
		   "config request");

	return 0;
}