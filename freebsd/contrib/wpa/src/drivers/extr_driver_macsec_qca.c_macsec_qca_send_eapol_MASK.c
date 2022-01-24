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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  sock; } ;
struct macsec_qca_data {TYPE_1__ common; scalar_t__ use_pae_group_addr; } ;
struct ieee8023_hdr {int /*<<< orphan*/  ethertype; int /*<<< orphan*/ * src; int /*<<< orphan*/ * dest; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_PAE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee8023_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 struct ieee8023_hdr* FUNC3 (size_t) ; 
 int /*<<< orphan*/  const* pae_group_addr ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 

__attribute__((used)) static int FUNC7(void *priv, const u8 *addr,
				 const u8 *data, size_t data_len, int encrypt,
				 const u8 *own_addr, u32 flags)
{
	struct macsec_qca_data *drv = priv;
	struct ieee8023_hdr *hdr;
	size_t len;
	u8 *pos;
	int res;

	len = sizeof(*hdr) + data_len;
	hdr = FUNC3(len);
	if (!hdr) {
		FUNC6(MSG_INFO,
			   "malloc() failed for macsec_qca_send_eapol(len=%lu)",
			   (unsigned long) len);
		return -1;
	}

	FUNC2(hdr->dest, drv->use_pae_group_addr ? pae_group_addr : addr,
		  ETH_ALEN);
	FUNC2(hdr->src, own_addr, ETH_ALEN);
	hdr->ethertype = FUNC0(ETH_P_PAE);

	pos = (u8 *) (hdr + 1);
	FUNC2(pos, data, data_len);

	res = FUNC4(drv->common.sock, (u8 *) hdr, len, 0);
	FUNC1(hdr);

	if (res < 0) {
		FUNC6(MSG_ERROR,
			   "macsec_qca_send_eapol - packet len: %lu - failed: send: %s",
			   (unsigned long) len, FUNC5(errno));
	}

	return res;
}