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
struct khash {int /*<<< orphan*/  k_keep; int /*<<< orphan*/  k_state; void* k_mask; void* k_dst; } ;
typedef  void* naddr ;
struct TYPE_2__ {int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_NEW ; 
 struct khash* FUNC0 (void*,void*,struct khash***) ; 
 int /*<<< orphan*/  FUNC1 (struct khash*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ now ; 
 scalar_t__ FUNC2 (int,char*) ; 

__attribute__((used)) static struct khash*
FUNC3(naddr dst, naddr mask)
{
	struct khash *k, **pk;

	k = FUNC0(dst, mask, &pk);
	if (k != NULL)
		return k;

	k = (struct khash *)FUNC2(sizeof(*k), "kern_add");

	FUNC1(k, 0, sizeof(*k));
	k->k_dst = dst;
	k->k_mask = mask;
	k->k_state = KS_NEW;
	k->k_keep = now.tv_sec;
	*pk = k;

	return k;
}