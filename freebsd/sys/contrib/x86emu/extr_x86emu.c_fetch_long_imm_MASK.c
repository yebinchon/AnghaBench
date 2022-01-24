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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int R_IP; int /*<<< orphan*/  R_CS; } ;
struct x86emu {TYPE_1__ x86; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct x86emu*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t 
FUNC1(struct x86emu *emu)
{
	uint32_t fetched;

	fetched = FUNC0(emu, emu->x86.R_CS, emu->x86.R_IP);
	emu->x86.R_IP += 4;
	return fetched;
}