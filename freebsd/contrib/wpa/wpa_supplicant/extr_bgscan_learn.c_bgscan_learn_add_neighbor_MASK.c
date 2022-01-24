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
struct bgscan_learn_bss {int num_neigh; int /*<<< orphan*/ * neigh; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC4(struct bgscan_learn_bss *bss,
				      const u8 *bssid)
{
	u8 *n;

	if (FUNC1(bss->bssid, bssid, ETH_ALEN) == 0)
		return;
	if (FUNC0(bss->neigh, bss->num_neigh, bssid))
		return;

	n = FUNC3(bss->neigh, bss->num_neigh + 1, ETH_ALEN);
	if (n == NULL)
		return;

	FUNC2(n + bss->num_neigh * ETH_ALEN, bssid, ETH_ALEN);
	bss->neigh = n;
	bss->num_neigh++;
}