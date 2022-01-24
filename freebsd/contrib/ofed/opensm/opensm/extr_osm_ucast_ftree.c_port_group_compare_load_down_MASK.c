#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  p_sw; } ;
struct TYPE_8__ {int counter_down; TYPE_1__ remote_hca_or_sw; } ;
typedef  TYPE_2__ ftree_port_group_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__ const**,TYPE_2__ const**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(const ftree_port_group_t * p1,
					       const ftree_port_group_t * p2)
{
	int temp = p1->counter_down - p2->counter_down;
	if (temp > 0)
		return 1;
	if (temp < 0)
		return -1;

	/* Find the less loaded remote sw and choose this one */
	do {
		uint32_t load1 =
		    FUNC1(p1->remote_hca_or_sw.p_sw);
		uint32_t load2 =
		    FUNC1(p2->remote_hca_or_sw.p_sw);
		temp = load1 - load2;
		if (temp > 0)
			return 1;
	} while (0);
	/* If they are both equal, choose the lowest index */
	return FUNC0(&p1, &p2);
}