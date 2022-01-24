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
typedef  scalar_t__ uint32_t ;
struct x86emu {int dummy; } ;
typedef  scalar_t__ int8_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct x86emu*) ; 
 scalar_t__* FUNC1 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC3(struct x86emu *emu)
{
	uint32_t *destreg;

	FUNC2(emu);
	destreg = FUNC1(emu);
	*destreg = (int32_t)(int8_t)FUNC0(emu);
}