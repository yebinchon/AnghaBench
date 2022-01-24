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
struct TYPE_3__ {int unicast; int /*<<< orphan*/ * src; } ;
union wpa_event_data {TYPE_1__ michael_mic_failure; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u32 ;
struct TYPE_4__ {void* tx_bytes; void* rx_bytes; void* tx_packets; void* rx_packets; } ;
struct atheros_driver_data {int /*<<< orphan*/  hapd; TYPE_2__ acct_data; int /*<<< orphan*/ * acct_mac; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  EVENT_MICHAEL_MIC_FAILURE ; 
 int /*<<< orphan*/  EVENT_WPS_BUTTON_PUSHED ; 
 int MGMT_FRAM_TAG_SIZE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct atheros_driver_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 void* FUNC9 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void
FUNC12(struct atheros_driver_data *drv,
				       char *custom, char *end)
{
#define MGMT_FRAM_TAG_SIZE 30 /* hardcoded in driver */
	FUNC10(MSG_DEBUG, "Custom wireless event: '%s'", custom);

	if (FUNC6(custom, "MLME-MICHAELMICFAILURE.indication", 33) == 0) {
		char *pos;
		u8 addr[ETH_ALEN];
		pos = FUNC7(custom, "addr=");
		if (pos == NULL) {
			FUNC10(MSG_DEBUG,
				   "MLME-MICHAELMICFAILURE.indication "
				   "without sender address ignored");
			return;
		}
		pos += 5;
		if (FUNC2(pos, addr) == 0) {
			union wpa_event_data data;
			FUNC3(&data, 0, sizeof(data));
			data.michael_mic_failure.unicast = 1;
			data.michael_mic_failure.src = addr;
			FUNC11(drv->hapd,
					     EVENT_MICHAEL_MIC_FAILURE, &data);
		} else {
			FUNC10(MSG_DEBUG,
				   "MLME-MICHAELMICFAILURE.indication "
				   "with invalid MAC address");
		}
	} else if (FUNC8(custom, "STA-TRAFFIC-STAT", 16) == 0) {
		char *key, *value;
		u32 val;
		key = custom;
		while ((key = FUNC4(key, '\n')) != NULL) {
			key++;
			value = FUNC4(key, '=');
			if (value == NULL)
				continue;
			*value++ = '\0';
			val = FUNC9(value, NULL, 10);
			if (FUNC5(key, "mac") == 0)
				FUNC2(value, drv->acct_mac);
			else if (FUNC5(key, "rx_packets") == 0)
				drv->acct_data.rx_packets = val;
			else if (FUNC5(key, "tx_packets") == 0)
				drv->acct_data.tx_packets = val;
			else if (FUNC5(key, "rx_bytes") == 0)
				drv->acct_data.rx_bytes = val;
			else if (FUNC5(key, "tx_bytes") == 0)
				drv->acct_data.tx_bytes = val;
			key = value;
		}
#ifdef CONFIG_WPS
	} else if (os_strncmp(custom, "PUSH-BUTTON.indication", 22) == 0) {
		/* Some atheros kernels send push button as a wireless event */
		/* PROBLEM! this event is received for ALL BSSs ...
		 * so all are enabled for WPS... ugh.
		 */
		wpa_supplicant_event(drv->hapd, EVENT_WPS_BUTTON_PUSHED, NULL);
	} else if (os_strncmp(custom, "Manage.prob_req ", 16) == 0) {
		/*
		 * Atheros driver uses a hack to pass Probe Request frames as a
		 * binary data in the custom wireless event. The old way (using
		 * packet sniffing) didn't work when bridging.
		 * Format: "Manage.prob_req <frame len>" | zero padding | frame
		 */
		int len = atoi(custom + 16);
		if (len < 0 || MGMT_FRAM_TAG_SIZE + len > end - custom) {
			wpa_printf(MSG_DEBUG, "Invalid Manage.prob_req event "
				   "length %d", len);
			return;
		}
		atheros_raw_receive(drv, NULL,
				    (u8 *) custom + MGMT_FRAM_TAG_SIZE, len);
#endif /* CONFIG_WPS */
#if defined(CONFIG_IEEE80211R) || defined(CONFIG_IEEE80211W) || defined(CONFIG_FILS)
	} else if (os_strncmp(custom, "Manage.assoc_req ", 17) == 0) {
		/* Format: "Manage.assoc_req <frame len>" | zero padding |
		 * frame */
		int len = atoi(custom + 17);
		if (len < 0 || MGMT_FRAM_TAG_SIZE + len > end - custom) {
			wpa_printf(MSG_DEBUG,
				   "Invalid Manage.assoc_req event length %d",
				   len);
			return;
		}
		atheros_raw_receive(drv, NULL,
				    (u8 *) custom + MGMT_FRAM_TAG_SIZE, len);
	} else if (os_strncmp(custom, "Manage.auth ", 12) == 0) {
		/* Format: "Manage.auth <frame len>" | zero padding | frame */
		int len = atoi(custom + 12);
		if (len < 0 ||
		    MGMT_FRAM_TAG_SIZE + len > end - custom) {
			wpa_printf(MSG_DEBUG,
				   "Invalid Manage.auth event length %d", len);
			return;
		}
		atheros_raw_receive(drv, NULL,
				    (u8 *) custom + MGMT_FRAM_TAG_SIZE, len);
#endif /* CONFIG_IEEE80211W || CONFIG_IEEE80211R || CONFIG_FILS */
#ifdef ATHEROS_USE_RAW_RECEIVE
	} else if (os_strncmp(custom, "Manage.action ", 14) == 0) {
		/* Format: "Manage.assoc_req <frame len>" | zero padding | frame
		 */
		int len = atoi(custom + 14);
		if (len < 0 || MGMT_FRAM_TAG_SIZE + len > end - custom) {
			wpa_printf(MSG_DEBUG,
				   "Invalid Manage.action event length %d",
				   len);
			return;
		}
		atheros_raw_receive(drv, NULL,
				    (u8 *) custom + MGMT_FRAM_TAG_SIZE, len);
#endif /* ATHEROS_USE_RAW_RECEIVE */
	}
}