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
struct wps_parse_attr {scalar_t__* msg_type; int /*<<< orphan*/  dev_name_len; scalar_t__ dev_name; int /*<<< orphan*/  serial_number_len; scalar_t__ serial_number; int /*<<< orphan*/  model_number_len; scalar_t__ model_number; int /*<<< orphan*/  model_name_len; scalar_t__ model_name; int /*<<< orphan*/  manufacturer_len; scalar_t__ manufacturer; scalar_t__ dev_password_id; int /*<<< orphan*/  const* primary_dev_type; int /*<<< orphan*/  const* uuid_e; scalar_t__ config_methods; } ;
struct wps_er_sta {int m1_received; void* dev_name; void* serial_number; void* model_number; void* model_name; void* manufacturer; void* dev_passwd_id; int /*<<< orphan*/  pri_dev_type; int /*<<< orphan*/  uuid; void* config_methods; int /*<<< orphan*/  list; struct wps_er_ap* ap; int /*<<< orphan*/  addr; } ;
struct wps_er_ap {TYPE_1__* er; int /*<<< orphan*/  sta; } ;
struct TYPE_2__ {int /*<<< orphan*/  wps; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  WPS_EV_ER_ENROLLEE_ADD ; 
 scalar_t__ WPS_M1 ; 
 int WPS_UUID_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct wps_er_sta*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wps_er_sta*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 struct wps_er_sta* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct wps_er_sta*,int /*<<< orphan*/ ) ; 
 struct wps_er_sta* FUNC9 (struct wps_er_ap*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wps_er_sta_timeout ; 

__attribute__((used)) static struct wps_er_sta * FUNC10(struct wps_er_ap *ap,
					       const u8 *addr,
					       struct wps_parse_attr *attr,
					       int probe_req)
{
	struct wps_er_sta *sta = FUNC9(ap, addr, NULL);
	int new_sta = 0;
	int m1;

	m1 = !probe_req && attr->msg_type && *attr->msg_type == WPS_M1;

	if (sta == NULL) {
		/*
		 * Only allow new STA entry to be added based on Probe Request
		 * or M1. This will filter out bogus events and anything that
		 * may have been ongoing at the time ER subscribed for events.
		 */
		if (!probe_req && !m1)
			return NULL;

		sta = FUNC7(sizeof(*sta));
		if (sta == NULL)
			return NULL;
		FUNC6(sta->addr, addr, ETH_ALEN);
		sta->ap = ap;
		FUNC1(&ap->sta, &sta->list);
		new_sta = 1;
	}

	if (m1)
		sta->m1_received = 1;

	if (attr->config_methods && (!probe_req || !sta->m1_received))
		sta->config_methods = FUNC0(attr->config_methods);
	if (attr->uuid_e && (!probe_req || !sta->m1_received))
		FUNC6(sta->uuid, attr->uuid_e, WPS_UUID_LEN);
	if (attr->primary_dev_type && (!probe_req || !sta->m1_received))
		FUNC6(sta->pri_dev_type, attr->primary_dev_type, 8);
	if (attr->dev_password_id && (!probe_req || !sta->m1_received))
		sta->dev_passwd_id = FUNC0(attr->dev_password_id);

	if (attr->manufacturer) {
		FUNC5(sta->manufacturer);
		sta->manufacturer = FUNC2(attr->manufacturer,
					       attr->manufacturer_len);
	}

	if (attr->model_name) {
		FUNC5(sta->model_name);
		sta->model_name = FUNC2(attr->model_name,
					     attr->model_name_len);
	}

	if (attr->model_number) {
		FUNC5(sta->model_number);
		sta->model_number = FUNC2(attr->model_number,
					       attr->model_number_len);
	}

	if (attr->serial_number) {
		FUNC5(sta->serial_number);
		sta->serial_number = FUNC2(attr->serial_number,
						attr->serial_number_len);
	}

	if (attr->dev_name) {
		FUNC5(sta->dev_name);
		sta->dev_name = FUNC2(attr->dev_name, attr->dev_name_len);
	}

	FUNC3(wps_er_sta_timeout, sta, NULL);
	FUNC4(300, 0, wps_er_sta_timeout, sta, NULL);

	if (m1 || new_sta)
		FUNC8(ap->er->wps, sta, WPS_EV_ER_ENROLLEE_ADD);

	return sta;
}