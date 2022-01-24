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
struct al_udma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct al_udma*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  cfg_sched ; 
 int /*<<< orphan*/  m2s ; 
 int /*<<< orphan*/  m2s_dwrr ; 

__attribute__((used)) static void FUNC2(struct al_udma *udma)
{
	FUNC1("M2S DWRR regs:\n");
	FUNC0(udma, " ", "\n", m2s, m2s_dwrr, cfg_sched);
}