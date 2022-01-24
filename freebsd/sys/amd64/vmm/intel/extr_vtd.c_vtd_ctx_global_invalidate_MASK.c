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
struct vtdmap {int ccr; } ;

/* Variables and functions */
 int VTD_CCR_CIRG_GLOBAL ; 
 int VTD_CCR_ICC ; 

__attribute__((used)) static void
FUNC0(struct vtdmap *vtdmap)
{

	vtdmap->ccr = VTD_CCR_ICC | VTD_CCR_CIRG_GLOBAL;
	while ((vtdmap->ccr & VTD_CCR_ICC) != 0)
		;
}