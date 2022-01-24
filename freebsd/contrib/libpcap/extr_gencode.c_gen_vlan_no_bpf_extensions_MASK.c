#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct block {int dummy; } ;
struct TYPE_8__ {int constant_part; } ;
struct TYPE_7__ {int constant_part; } ;
struct TYPE_9__ {TYPE_2__ off_linktype; TYPE_1__ off_linkpl; } ;
typedef  TYPE_3__ compiler_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block*,struct block*) ; 
 struct block* FUNC1 (TYPE_3__*) ; 
 struct block* FUNC2 (TYPE_3__*,int) ; 

__attribute__((used)) static struct block *
FUNC3(compiler_state_t *cstate, int vlan_num)
{
	struct block *b0, *b1;

	b0 = FUNC1(cstate);

	if (vlan_num >= 0) {
		b1 = FUNC2(cstate, vlan_num);
		FUNC0(b0, b1);
		b0 = b1;
	}

	/*
	 * Both payload and link header type follow the VLAN tags so that
	 * both need to be updated.
	 */
	cstate->off_linkpl.constant_part += 4;
	cstate->off_linktype.constant_part += 4;

	return b0;
}