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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct p2p_device {int dummy; } ;
struct p2p_data {int ssid_set; size_t ssid_len; TYPE_2__* cfg; int /*<<< orphan*/ * intended_addr; int /*<<< orphan*/ * ssid; TYPE_1__* p2ps_prov; } ;
struct TYPE_4__ {int (* get_go_info ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int*,unsigned int*) ;int /*<<< orphan*/ * dev_addr; int /*<<< orphan*/  cb_ctx; } ;
struct TYPE_3__ {unsigned int force_freq; scalar_t__ pref_freq; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int SSID_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,struct p2p_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int*,unsigned int*) ; 

__attribute__((used)) static void FUNC5(struct p2p_data *p2p,
				    struct p2p_device *dev,
				    struct wpabuf *buf)
{
	int found;
	u8 intended_addr[ETH_ALEN];
	u8 ssid[SSID_MAX_LEN];
	size_t ssid_len;
	int group_iface;
	unsigned int force_freq;

	if (!p2p->cfg->get_go_info)
		return;

	found = p2p->cfg->get_go_info(
		p2p->cfg->cb_ctx, intended_addr, ssid,
		&ssid_len, &group_iface, &force_freq);
	if (found) {
		if (force_freq > 0) {
			p2p->p2ps_prov->force_freq = force_freq;
			p2p->p2ps_prov->pref_freq = 0;

			if (dev)
				FUNC3(p2p, dev, force_freq, 0, 0);
		}
		FUNC0(buf, p2p->cfg->dev_addr,
				     ssid, ssid_len);

		if (group_iface)
			FUNC1(buf, p2p->intended_addr);
		else
			FUNC1(buf, intended_addr);
	} else {
		if (!p2p->ssid_set) {
			FUNC2(p2p, p2p->ssid, &p2p->ssid_len);
			p2p->ssid_set = 1;
		}

		/* Add pre-composed P2P Group ID */
		FUNC0(buf, p2p->cfg->dev_addr,
				     p2p->ssid, p2p->ssid_len);

		if (group_iface)
			FUNC1(
				buf, p2p->intended_addr);
		else
			FUNC1(
				buf, p2p->cfg->dev_addr);
	}
}