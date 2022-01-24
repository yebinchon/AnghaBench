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
typedef  void uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SA_ATTROFFS_F ; 
 int IB_SA_DATA_OFFS ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC1(void *mad, unsigned i)
{
	int offset = FUNC0(mad, 0, IB_SA_ATTROFFS_F);
	return (uint8_t *) mad + IB_SA_DATA_OFFS + i * (offset << 3);
}