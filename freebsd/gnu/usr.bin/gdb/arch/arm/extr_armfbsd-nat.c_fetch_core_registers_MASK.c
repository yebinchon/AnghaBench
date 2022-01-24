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
struct md_core {int /*<<< orphan*/  freg; int /*<<< orphan*/  intreg; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2 (char *core_reg_sect, unsigned core_reg_size,
		      int which, CORE_ADDR ignore)
{
  struct md_core *core_reg = (struct md_core *) core_reg_sect;
  int regno;
  CORE_ADDR r_pc;

  FUNC1 (&core_reg->intreg);
  FUNC0 (&core_reg->freg);
}