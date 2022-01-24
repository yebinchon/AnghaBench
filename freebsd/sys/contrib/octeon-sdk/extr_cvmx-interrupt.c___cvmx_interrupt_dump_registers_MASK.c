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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  COP0_BADVADDR ; 
 int /*<<< orphan*/  COP0_CAUSE ; 
 int /*<<< orphan*/  COP0_EPC ; 
 int /*<<< orphan*/  COP0_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,unsigned int,unsigned int,int /*<<< orphan*/ ,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * reg_names ; 

__attribute__((used)) static void FUNC5(uint64_t *registers)
{
    uint64_t r1, r2;
    int reg;
    for (reg=0; reg<16; reg++)
    {
        r1 = registers[reg]; r2 = registers[reg+16];
        FUNC3("%3s ($%02d): 0x%08x%08x \t %3s ($%02d): 0x%08x%08x\n",
                           reg_names[reg], reg, (unsigned int)FUNC1(r1), (unsigned int)FUNC2(r1),
                           reg_names[reg+16], reg+16, (unsigned int)FUNC1(r2), (unsigned int)FUNC2(r2));
    }
    FUNC0 (r1, COP0_CAUSE);
    FUNC4 ("COP0_CAUSE", r1);
    FUNC0 (r2, COP0_STATUS);
    FUNC4 ("COP0_STATUS", r2);
    FUNC0 (r1, COP0_BADVADDR);
    FUNC4 ("COP0_BADVADDR", r1);
    FUNC0 (r2, COP0_EPC);
    FUNC4 ("COP0_EPC", r2);
}