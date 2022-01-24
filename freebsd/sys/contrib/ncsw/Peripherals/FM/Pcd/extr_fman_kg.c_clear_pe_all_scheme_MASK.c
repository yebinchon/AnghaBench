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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct fman_kg_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fman_kg_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fman_kg_regs*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fman_kg_regs *regs, uint8_t hwport_id)
{
	uint32_t ar;

	FUNC2(regs, 0xffffffff, 0);

	ar = FUNC0(hwport_id, TRUE);
	FUNC1(regs, ar);
}