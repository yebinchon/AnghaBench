#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct udma_rlimit_common {int dummy; } ;
struct al_udma_m2s_rlimit_cfg {int dummy; } ;
struct al_udma {TYPE_3__* udma_regs; } ;
struct TYPE_4__ {struct udma_rlimit_common rlimit; } ;
struct TYPE_5__ {TYPE_1__ m2s_stream_rate_limiter; } ;
struct TYPE_6__ {TYPE_2__ m2s; } ;

/* Variables and functions */
 int FUNC0 (struct udma_rlimit_common*,struct al_udma_m2s_rlimit_cfg*) ; 

int FUNC1(struct al_udma *udma,
				struct al_udma_m2s_rlimit_cfg *conf)
{
	struct udma_rlimit_common *rlimit_regs =
	    &udma->udma_regs->m2s.m2s_stream_rate_limiter.rlimit;

	return FUNC0(rlimit_regs, conf);
}