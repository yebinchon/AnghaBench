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
 int /*<<< orphan*/  reg_1 ; 
 int /*<<< orphan*/  reg_3 ; 
 int /*<<< orphan*/  reg_4 ; 
 int /*<<< orphan*/  reg_5 ; 
 int /*<<< orphan*/  reg_6 ; 
 int /*<<< orphan*/  s2m ; 
 int /*<<< orphan*/  s2m_feature ; 

__attribute__((used)) static void FUNC2(struct al_udma *udma)
{
	FUNC1("S2M feature regs:\n");
	FUNC0(udma, " ", "\n", s2m, s2m_feature, reg_1);
	FUNC0(udma, " ", "\n", s2m, s2m_feature, reg_3);
	FUNC0(udma, " ", "\n", s2m, s2m_feature, reg_4);
	FUNC0(udma, " ", "\n", s2m, s2m_feature, reg_5);
	FUNC0(udma, " ", "\n", s2m, s2m_feature, reg_6);
}