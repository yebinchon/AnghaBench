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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_driver_ndis_data {int dummy; } ;
typedef  enum event_types { ____Placeholder_event_types } event_types ;

/* Variables and functions */
#define  EVENT_ADAPTER_ARRIVAL 132 
#define  EVENT_ADAPTER_REMOVAL 131 
#define  EVENT_CONNECT 130 
#define  EVENT_DISCONNECT 129 
#define  EVENT_MEDIA_SPECIFIC 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_driver_ndis_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_driver_ndis_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_driver_ndis_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_driver_ndis_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC7(struct wpa_driver_ndis_data *drv,
					  u8 *buf, size_t len)
{
	u8 *pos, *data = NULL;
	enum event_types type;
	size_t data_len = 0;

	FUNC5(MSG_MSGDUMP, "NDIS: received event data", buf, len);
	if (len < sizeof(int))
		return;
	type = *((int *) buf);
	pos = buf + sizeof(int);
	FUNC6(MSG_DEBUG, "NDIS: event - type %d", type);

	if (buf + len - pos > 2) {
		data_len = (int) *pos++ << 8;
		data_len += *pos++;
		if (data_len > (size_t) (buf + len - pos)) {
			FUNC6(MSG_DEBUG, "NDIS: event data overflow");
			return;
		}
		data = pos;
		FUNC5(MSG_MSGDUMP, "NDIS: event data", data, data_len);
	}

	switch (type) {
	case EVENT_CONNECT:
		FUNC2(drv);
		break;
	case EVENT_DISCONNECT:
		FUNC3(drv);
		break;
	case EVENT_MEDIA_SPECIFIC:
		FUNC4(drv, data, data_len);
		break;
	case EVENT_ADAPTER_ARRIVAL:
		FUNC0(drv);
		break;
	case EVENT_ADAPTER_REMOVAL:
		FUNC1(drv);
		break;
	}
}