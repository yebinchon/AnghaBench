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
struct al_udma {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  cfg_token_size_2; int /*<<< orphan*/  cfg_token_size_1; int /*<<< orphan*/  cfg_cycle; int /*<<< orphan*/  cfg_1s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct al_udma*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  m2s ; 
 int /*<<< orphan*/  m2s_stream_rate_limiter ; 
 TYPE_1__ rlimit ; 

__attribute__((used)) static void FUNC2(struct al_udma *udma)
{
	FUNC1("M2S stream rate limiter regs:\n");

	FUNC0(udma, " ", "\n", m2s, m2s_stream_rate_limiter,
			rlimit.cfg_1s);
	FUNC0(udma, " ", "\n", m2s, m2s_stream_rate_limiter,
			rlimit.cfg_cycle);
	FUNC0(udma, " ", "\n", m2s, m2s_stream_rate_limiter,
			rlimit.cfg_token_size_1);
	FUNC0(udma, " ", "\n", m2s, m2s_stream_rate_limiter,
			rlimit.cfg_token_size_2);
	FUNC0(udma, " ", "\n", m2s, m2s_stream_rate_limiter,
			rlimit.mask);
}