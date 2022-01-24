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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_data {int dev_capab; scalar_t__ p2ps_seek_count; scalar_t__ p2ps_seek; scalar_t__ ext_listen_interval; int /*<<< orphan*/  ext_listen_period; TYPE_1__* cfg; scalar_t__* vendor_elem; scalar_t__ wfd_ie_probe_req; } ;
struct TYPE_2__ {scalar_t__ channel; scalar_t__ reg_class; int /*<<< orphan*/  country; } ;

/* Variables and functions */
 unsigned int BAND_60_GHZ ; 
 int P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ; 
 int P2P_DEV_CAPAB_SERVICE_DISCOVERY ; 
 size_t VENDOR_ELEM_PROBE_REQ_P2P ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,struct p2p_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int* FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,scalar_t__) ; 

void FUNC9(struct p2p_data *p2p, struct wpabuf *ies, const u8 *dev_id,
		 unsigned int bands)
{
	u8 dev_capab;
	u8 *len;

#ifdef CONFIG_WIFI_DISPLAY
	if (p2p->wfd_ie_probe_req)
		wpabuf_put_buf(ies, p2p->wfd_ie_probe_req);
#endif /* CONFIG_WIFI_DISPLAY */

	if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_PROBE_REQ_P2P])
		FUNC8(ies,
			       p2p->vendor_elem[VENDOR_ELEM_PROBE_REQ_P2P]);

	len = FUNC4(ies);

	dev_capab = p2p->dev_capab & ~P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY;

	/* P2PS requires Probe Request frames to include SD bit */
	if (p2p->p2ps_seek && p2p->p2ps_seek_count)
		dev_capab |= P2P_DEV_CAPAB_SERVICE_DISCOVERY;

	FUNC0(ies, dev_capab, 0);

	if (dev_id)
		FUNC1(ies, dev_id);
	if (p2p->cfg->reg_class && p2p->cfg->channel)
		FUNC5(ies, p2p->cfg->country,
					   p2p->cfg->reg_class,
					   p2p->cfg->channel);
	if (p2p->ext_listen_interval)
		FUNC3(ies, p2p->ext_listen_period,
					      p2p->ext_listen_interval);

	if (bands & BAND_60_GHZ)
		FUNC2(ies, p2p, NULL);

	if (p2p->p2ps_seek && p2p->p2ps_seek_count)
		FUNC6(ies, p2p);

	/* TODO: p2p_buf_add_operating_channel() if GO */
	FUNC7(ies, len);
}