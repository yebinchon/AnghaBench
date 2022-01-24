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
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int ENXIO ; 
 int ERANGE ; 
 struct clknode* FUNC0 (struct clkdom*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct clkdom *clkdom, uint32_t ncells,
    phandle_t *cells, struct clknode **clk)
{

	if (ncells != 0)
		return (ERANGE);

	*clk = FUNC0(clkdom, 0);

	if (*clk == NULL)
		return (ENXIO);
	return (0);
}