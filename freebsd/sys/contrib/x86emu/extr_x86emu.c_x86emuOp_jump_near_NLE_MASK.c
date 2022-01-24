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
struct x86emu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*,int) ; 

__attribute__((used)) static void
FUNC2(struct x86emu *emu)
{
	int sf, of;

	sf = FUNC0(F_SF) != 0;
	of = FUNC0(F_OF) != 0;

	FUNC1(emu, sf == of && !FUNC0(F_ZF));
}