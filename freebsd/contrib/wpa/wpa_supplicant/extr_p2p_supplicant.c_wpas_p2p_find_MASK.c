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
struct wpa_supplicant {TYPE_1__* global; scalar_t__ p2p_in_provisioning; scalar_t__ p2p_long_listen; } ;
typedef  enum p2p_discovery_type { ____Placeholder_p2p_discovery_type } p2p_discovery_type ;
struct TYPE_2__ {int /*<<< orphan*/ * p2p; scalar_t__ p2p_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,int,unsigned int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ,char const**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 

int FUNC4(struct wpa_supplicant *wpa_s, unsigned int timeout,
		  enum p2p_discovery_type type,
		  unsigned int num_req_dev_types, const u8 *req_dev_types,
		  const u8 *dev_id, unsigned int search_delay,
		  u8 seek_cnt, const char **seek_string, int freq)
{
	FUNC3(wpa_s);
	wpa_s->p2p_long_listen = 0;

	if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == NULL ||
	    wpa_s->p2p_in_provisioning) {
		FUNC1(wpa_s, MSG_DEBUG, "P2P: Reject p2p_find operation%s%s",
			(wpa_s->global->p2p_disabled || !wpa_s->global->p2p) ?
			" (P2P disabled)" : "",
			wpa_s->p2p_in_provisioning ?
			" (p2p_in_provisioning)" : "");
		return -1;
	}

	FUNC2(wpa_s);

	return FUNC0(wpa_s->global->p2p, timeout, type,
			num_req_dev_types, req_dev_types, dev_id,
			search_delay, seek_cnt, seek_string, freq);
}