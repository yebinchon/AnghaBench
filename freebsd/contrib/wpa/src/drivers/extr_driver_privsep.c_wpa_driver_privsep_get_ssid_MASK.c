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
typedef  int u8 ;
struct wpa_driver_privsep_data {int dummy; } ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  PRIVSEP_CMD_GET_SSID ; 
 int SSID_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct wpa_driver_privsep_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,size_t*) ; 

__attribute__((used)) static int FUNC3(void *priv, u8 *ssid)
{
	struct wpa_driver_privsep_data *drv = priv;
	int res, ssid_len;
	u8 reply[sizeof(int) + SSID_MAX_LEN];
	size_t len = sizeof(reply);

	res = FUNC2(drv, PRIVSEP_CMD_GET_SSID, NULL, 0, reply, &len);
	if (res < 0 || len < sizeof(int))
		return -1;
	FUNC0(&ssid_len, reply, sizeof(int));
	if (ssid_len < 0 || ssid_len > SSID_MAX_LEN ||
	    sizeof(int) + ssid_len > len) {
		FUNC1(MSG_DEBUG, "privsep: Invalid get SSID reply");
		return -1;
	}
	FUNC0(ssid, &reply[sizeof(int)], ssid_len);
	return ssid_len;
}