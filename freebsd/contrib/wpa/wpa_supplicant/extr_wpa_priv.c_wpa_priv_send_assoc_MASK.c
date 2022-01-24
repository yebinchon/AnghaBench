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
struct TYPE_2__ {int req_ies_len; int resp_ies_len; int beacon_ies_len; int* req_ies; int* resp_ies; int* beacon_ies; } ;
union wpa_event_data {TYPE_1__ assoc_info; } ;
typedef  int /*<<< orphan*/  u8 ;
struct wpa_priv_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_priv_interface*,int,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC4(struct wpa_priv_interface *iface, int event,
				union wpa_event_data *data)
{
	size_t buflen = 3 * sizeof(int);
	u8 *buf, *pos;
	int len;

	if (data) {
		buflen += data->assoc_info.req_ies_len +
			data->assoc_info.resp_ies_len +
			data->assoc_info.beacon_ies_len;
	}

	buf = FUNC1(buflen);
	if (buf == NULL)
		return;

	pos = buf;

	if (data && data->assoc_info.req_ies) {
		len = data->assoc_info.req_ies_len;
		FUNC2(pos, &len, sizeof(int));
		pos += sizeof(int);
		FUNC2(pos, data->assoc_info.req_ies, len);
		pos += len;
	} else {
		len = 0;
		FUNC2(pos, &len, sizeof(int));
		pos += sizeof(int);
	}

	if (data && data->assoc_info.resp_ies) {
		len = data->assoc_info.resp_ies_len;
		FUNC2(pos, &len, sizeof(int));
		pos += sizeof(int);
		FUNC2(pos, data->assoc_info.resp_ies, len);
		pos += len;
	} else {
		len = 0;
		FUNC2(pos, &len, sizeof(int));
		pos += sizeof(int);
	}

	if (data && data->assoc_info.beacon_ies) {
		len = data->assoc_info.beacon_ies_len;
		FUNC2(pos, &len, sizeof(int));
		pos += sizeof(int);
		FUNC2(pos, data->assoc_info.beacon_ies, len);
		pos += len;
	} else {
		len = 0;
		FUNC2(pos, &len, sizeof(int));
		pos += sizeof(int);
	}

	FUNC3(iface, event, buf, buflen);

	FUNC0(buf);
}