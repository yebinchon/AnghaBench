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
struct TYPE_2__ {int (* pending_intr ) (struct vlapic*,int*) ;} ;
struct vlapic {TYPE_1__ ops; struct LAPIC* apic_page; } ;
struct LAPIC {int ppr; int /*<<< orphan*/  irr0; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vlapic*,int*) ; 

int
FUNC5(struct vlapic *vlapic, int *vecptr)
{
	struct LAPIC	*lapic = vlapic->apic_page;
	int	  	 idx, i, bitpos, vector;
	uint32_t	*irrptr, val;

	if (vlapic->ops.pending_intr)
		return ((*vlapic->ops.pending_intr)(vlapic, vecptr));

	irrptr = &lapic->irr0;

	for (i = 7; i >= 0; i--) {
		idx = i * 4;
		val = FUNC2(&irrptr[idx]);
		bitpos = FUNC3(val);
		if (bitpos != 0) {
			vector = i * 32 + (bitpos - 1);
			if (FUNC0(vector) > FUNC0(lapic->ppr)) {
				FUNC1(vlapic, "pending intr %d", vector);
				if (vecptr != NULL)
					*vecptr = vector;
				return (1);
			} else 
				break;
		}
	}
	return (0);
}