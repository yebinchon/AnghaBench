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
 int /*<<< orphan*/  cfg_1c ; 
 int /*<<< orphan*/  cfg_2c ; 
 int /*<<< orphan*/  cfg_application_ack ; 
 int /*<<< orphan*/  s2m ; 
 int /*<<< orphan*/  s2m_comp ; 

__attribute__((used)) static void FUNC2(struct al_udma *udma)
{
	FUNC1("S2M completion regs:\n");
	FUNC0(udma, " ", "\n", s2m, s2m_comp, cfg_1c);
	FUNC0(udma, " ", "\n", s2m, s2m_comp, cfg_2c);
	FUNC0(udma, " ", "\n", s2m, s2m_comp, cfg_application_ack);
}