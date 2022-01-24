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
typedef  int /*<<< orphan*/  const u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct l2_packet_data {int /*<<< orphan*/  pcap; int /*<<< orphan*/  const* own_addr; int /*<<< orphan*/  l2_hdr; } ;
struct l2_ethhdr {int /*<<< orphan*/  h_proto; struct l2_ethhdr* h_source; struct l2_ethhdr* h_dest; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct l2_ethhdr*) ; 
 struct l2_ethhdr* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct l2_ethhdr*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 

int FUNC5(struct l2_packet_data *l2, const u8 *dst_addr, u16 proto,
		   const u8 *buf, size_t len)
{
	if (!l2->l2_hdr) {
		int ret;
		struct l2_ethhdr *eth = FUNC2(sizeof(*eth) + len);
		if (eth == NULL)
			return -1;
		FUNC3(eth->h_dest, dst_addr, ETH_ALEN);
		FUNC3(eth->h_source, l2->own_addr, ETH_ALEN);
		eth->h_proto = FUNC0(proto);
		FUNC3(eth + 1, buf, len);
		ret = FUNC4(l2->pcap, (u8 *) eth, len + sizeof(*eth));
		FUNC1(eth);
		return ret;
	} else
		return FUNC4(l2->pcap, buf, len);
}