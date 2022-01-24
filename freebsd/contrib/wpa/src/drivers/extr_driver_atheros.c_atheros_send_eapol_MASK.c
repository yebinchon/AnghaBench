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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct l2_ethhdr {int /*<<< orphan*/  h_proto; struct l2_ethhdr* h_source; struct l2_ethhdr* h_dest; } ;
struct atheros_driver_data {int /*<<< orphan*/  sock_xmit; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct l2_ethhdr*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long) ; 

__attribute__((used)) static int
FUNC7(void *priv, const u8 *addr, const u8 *data, size_t data_len,
		   int encrypt, const u8 *own_addr, u32 flags)
{
	struct atheros_driver_data *drv = priv;
	unsigned char buf[3000];
	unsigned char *bp = buf;
	struct l2_ethhdr *eth;
	size_t len;
	int status;

	/*
	 * Prepend the Ethernet header.  If the caller left us
	 * space at the front we could just insert it but since
	 * we don't know we copy to a local buffer.  Given the frequency
	 * and size of frames this probably doesn't matter.
	 */
	len = data_len + sizeof(struct l2_ethhdr);
	if (len > sizeof(buf)) {
		bp = FUNC3(len);
		if (bp == NULL) {
			FUNC6(MSG_INFO,
				   "EAPOL frame discarded, cannot malloc temp buffer of size %lu!",
				   (unsigned long) len);
			return -1;
		}
	}
	eth = (struct l2_ethhdr *) bp;
	FUNC4(eth->h_dest, addr, ETH_ALEN);
	FUNC4(eth->h_source, own_addr, ETH_ALEN);
	eth->h_proto = FUNC0(ETH_P_EAPOL);
	FUNC4(eth + 1, data, data_len);

	FUNC5(MSG_MSGDUMP, "TX EAPOL", bp, len);

	status = FUNC1(drv->sock_xmit, addr, ETH_P_EAPOL, bp, len);

	if (bp != buf)
		FUNC2(bp);
	return status;
}