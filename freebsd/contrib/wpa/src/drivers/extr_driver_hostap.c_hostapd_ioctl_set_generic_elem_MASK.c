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
struct TYPE_3__ {size_t len; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {TYPE_1__ generic_elem; } ;
struct prism2_hostapd_param {TYPE_2__ u; int /*<<< orphan*/  cmd; } ;
struct hostap_driver_data {size_t generic_ie_len; size_t wps_ie_len; int /*<<< orphan*/  wps_ie; int /*<<< orphan*/  generic_ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t PRISM2_HOSTAPD_GENERIC_ELEMENT_HDR_LEN ; 
 int /*<<< orphan*/  PRISM2_HOSTAPD_SET_GENERIC_ELEMENT ; 
 int FUNC0 (struct hostap_driver_data*,struct prism2_hostapd_param*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct prism2_hostapd_param*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 struct prism2_hostapd_param* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC5(struct hostap_driver_data *drv)
{
	struct prism2_hostapd_param *param;
	int res;
	size_t blen, elem_len;

	elem_len = drv->generic_ie_len + drv->wps_ie_len;
	blen = PRISM2_HOSTAPD_GENERIC_ELEMENT_HDR_LEN + elem_len;
	if (blen < sizeof(*param))
		blen = sizeof(*param);

	param = FUNC3(blen);
	if (param == NULL)
		return -1;

	param->cmd = PRISM2_HOSTAPD_SET_GENERIC_ELEMENT;
	param->u.generic_elem.len = elem_len;
	if (drv->generic_ie) {
		FUNC2(param->u.generic_elem.data, drv->generic_ie,
			  drv->generic_ie_len);
	}
	if (drv->wps_ie) {
		FUNC2(&param->u.generic_elem.data[drv->generic_ie_len],
			  drv->wps_ie, drv->wps_ie_len);
	}
	FUNC4(MSG_DEBUG, "hostap: Set generic IE",
		    param->u.generic_elem.data, elem_len);
	res = FUNC0(drv, param, blen);

	FUNC1(param);

	return res;
}