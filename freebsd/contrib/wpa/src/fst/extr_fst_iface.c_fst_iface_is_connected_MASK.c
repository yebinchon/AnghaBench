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
struct fst_iface {int dummy; } ;
struct fst_get_peer_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (struct fst_iface*,struct fst_get_peer_ctx**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct fst_iface*,struct fst_get_peer_ctx**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

Boolean FUNC3(struct fst_iface *iface, const u8 *addr,
			       Boolean mb_only)
{
	struct fst_get_peer_ctx *ctx;
	const u8 *a = FUNC0(iface, &ctx, mb_only);

	for (; a != NULL; a = FUNC1(iface, &ctx, mb_only))
		if (FUNC2(addr, a, ETH_ALEN) == 0)
			return TRUE;

	return FALSE;
}