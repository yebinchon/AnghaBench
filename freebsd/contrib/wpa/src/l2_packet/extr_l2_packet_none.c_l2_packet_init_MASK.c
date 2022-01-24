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
struct l2_packet_data {void (* rx_callback ) (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ;int l2_hdr; int fd; void* rx_callback_ctx; int /*<<< orphan*/  ifname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct l2_packet_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  l2_packet_receive ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 struct l2_packet_data* FUNC2 (int) ; 

struct l2_packet_data * FUNC3(
	const char *ifname, const u8 *own_addr, unsigned short protocol,
	void (*rx_callback)(void *ctx, const u8 *src_addr,
			    const u8 *buf, size_t len),
	void *rx_callback_ctx, int l2_hdr)
{
	struct l2_packet_data *l2;

	l2 = FUNC2(sizeof(struct l2_packet_data));
	if (l2 == NULL)
		return NULL;
	FUNC1(l2->ifname, ifname, sizeof(l2->ifname));
	l2->rx_callback = rx_callback;
	l2->rx_callback_ctx = rx_callback_ctx;
	l2->l2_hdr = l2_hdr;

	/*
	 * TODO: open connection for receiving frames
	 */
	l2->fd = -1;
	if (l2->fd >= 0)
		FUNC0(l2->fd, l2_packet_receive, l2, NULL);

	return l2;
}