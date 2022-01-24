#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct rt_entry {int /*<<< orphan*/  rt_mask; int /*<<< orphan*/  rt_dst; } ;
struct khash {int /*<<< orphan*/  k_state; } ;
struct TYPE_18__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_17__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_16__ {scalar_t__ (* rnh_deladdr ) (TYPE_3__*,TYPE_4__*,TYPE_5__*) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_15__ {TYPE_2__ sin_addr; } ;
struct TYPE_12__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_14__ {TYPE_1__ sin_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_DELETE ; 
 scalar_t__ TRACEACTIONS ; 
 TYPE_3__ dst_sock ; 
 int /*<<< orphan*/  FUNC0 (struct rt_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct khash* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ mask_sock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_8__ need_kern ; 
 TYPE_7__ now ; 
 TYPE_5__* rhead ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  total_routes ; 
 int /*<<< orphan*/  FUNC6 (char*,struct rt_entry*) ; 

void
FUNC7(struct rt_entry *rt)
{
	struct khash *k;


	if (TRACEACTIONS)
		FUNC6("Del", rt);

	k = FUNC2(rt->rt_dst, rt->rt_mask, 0);
	if (k != NULL) {
		k->k_state |= KS_DELETE;
		need_kern.tv_sec = now.tv_sec;
	}

	dst_sock.sin_addr.s_addr = rt->rt_dst;
	mask_sock.sin_addr.s_addr = FUNC1(rt->rt_mask);
	FUNC3(&mask_sock);
	if (rt != (struct rt_entry *)rhead->rnh_deladdr(&dst_sock, &mask_sock,
							rhead)) {
		FUNC4("rnh_deladdr() failed");
	} else {
		FUNC0(rt);
		total_routes--;
	}
}