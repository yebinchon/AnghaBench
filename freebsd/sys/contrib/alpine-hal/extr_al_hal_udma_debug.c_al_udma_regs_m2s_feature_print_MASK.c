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
 int /*<<< orphan*/  m2s ; 
 int /*<<< orphan*/  m2s_feature ; 
 int /*<<< orphan*/  reg_1 ; 
 int /*<<< orphan*/  reg_3 ; 
 int /*<<< orphan*/  reg_4 ; 
 int /*<<< orphan*/  reg_5 ; 

__attribute__((used)) static void FUNC2(struct al_udma *udma)
{
	FUNC1("M2S feature regs:\n");
	FUNC0(udma, " ", "\n", m2s, m2s_feature, reg_1);
	FUNC0(udma, " ", "\n", m2s, m2s_feature, reg_3);
	FUNC0(udma, " ", "\n", m2s, m2s_feature, reg_4);
	FUNC0(udma, " ", "\n", m2s, m2s_feature, reg_5);
}