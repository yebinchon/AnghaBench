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
typedef  scalar_t__ time_t ;
struct khash {int k_state; scalar_t__ k_gate; scalar_t__ k_redirect_time; int /*<<< orphan*/  k_mask; int /*<<< orphan*/  k_dst; struct khash* k_next; } ;
typedef  scalar_t__ naddr ;
struct TYPE_4__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_3__ {int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int KHASH_SIZE ; 
 int KS_DELETE ; 
 int KS_DYNAMIC ; 
 int KS_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct khash** khash_bins ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_2__ need_kern ; 
 TYPE_1__ now ; 
 int /*<<< orphan*/  supplier ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(naddr bad_gate,
	      time_t old)
{
	int i;
	struct khash *k;


	for (i = 0; i < KHASH_SIZE; i++) {
		for (k = khash_bins[i]; k != NULL; k = k->k_next) {
			if (!(k->k_state & KS_DYNAMIC)
			    || (k->k_state & KS_STATIC))
				continue;

			if (k->k_gate != bad_gate
			    && k->k_redirect_time > old
			    && !supplier)
				continue;

			k->k_state |= KS_DELETE;
			k->k_state &= ~KS_DYNAMIC;
			need_kern.tv_sec = now.tv_sec;
			FUNC2("mark redirected %s --> %s for deletion",
				  FUNC0(k->k_dst, k->k_mask, 0),
				  FUNC1(k->k_gate));
		}
	}
}