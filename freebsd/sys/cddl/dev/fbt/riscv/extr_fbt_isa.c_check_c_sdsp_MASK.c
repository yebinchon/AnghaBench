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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int MASK_C_SDSP ; 
 int MATCH_C_SDSP ; 
 int RS2_C_MASK ; 
 int RS2_C_RA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC1(uint32_t **instr)
{
	uint16_t *instr1;
	int i;

	for (i = 0; i < 2; i++) {
		instr1 = (uint16_t *)(*instr) + i;
		if (FUNC0(*instr1, (MATCH_C_SDSP | RS2_C_RA),
		    (MASK_C_SDSP | RS2_C_MASK))) {
			*instr = (uint32_t *)instr1;
			return (1);
		}
	}

	return (0);
}