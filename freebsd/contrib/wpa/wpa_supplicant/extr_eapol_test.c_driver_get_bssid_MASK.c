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
struct eapol_test_data {int id_req_sent; int /*<<< orphan*/  wpa_s; scalar_t__ ctrl_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_eap_request_identity ; 

__attribute__((used)) static int FUNC2(void *priv, u8 *bssid)
{
	struct eapol_test_data *e = priv;

	if (e->ctrl_iface && !e->id_req_sent) {
		FUNC0(0, 0, send_eap_request_identity,
				       e->wpa_s, NULL);
		e->id_req_sent = 1;
	}

	FUNC1(bssid, 0, ETH_ALEN);
	bssid[5] = 1;
	return 0;
}