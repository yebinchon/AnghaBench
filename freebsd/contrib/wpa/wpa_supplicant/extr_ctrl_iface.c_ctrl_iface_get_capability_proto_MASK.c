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
struct wpa_driver_capa {int key_mgmt; } ;

/* Variables and functions */
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA ; 
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA2 ; 
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK ; 
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK ; 
 int FUNC0 (char*,int,char*,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 size_t FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC3(int res, char *strict,
					   struct wpa_driver_capa *capa,
					   char *buf, size_t buflen)
{
	int ret;
	char *pos, *end;
	size_t len;

	pos = buf;
	end = pos + buflen;

	if (res < 0) {
		if (strict)
			return 0;
		len = FUNC2(buf, "RSN WPA", buflen);
		if (len >= buflen)
			return -1;
		return len;
	}

	if (capa->key_mgmt & (WPA_DRIVER_CAPA_KEY_MGMT_WPA2 |
			      WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK)) {
		ret = FUNC0(pos, end - pos, "%sRSN",
				  pos == buf ? "" : " ");
		if (FUNC1(end - pos, ret))
			return pos - buf;
		pos += ret;
	}

	if (capa->key_mgmt & (WPA_DRIVER_CAPA_KEY_MGMT_WPA |
			      WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK)) {
		ret = FUNC0(pos, end - pos, "%sWPA",
				  pos == buf ? "" : " ");
		if (FUNC1(end - pos, ret))
			return pos - buf;
		pos += ret;
	}

	return pos - buf;
}