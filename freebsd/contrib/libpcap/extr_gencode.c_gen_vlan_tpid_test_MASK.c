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
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERTYPE_8021AD ; 
 int /*<<< orphan*/  ETHERTYPE_8021Q ; 
 int /*<<< orphan*/  ETHERTYPE_8021QINQ ; 
 struct block* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block*,struct block*) ; 

__attribute__((used)) static struct block *
FUNC2(compiler_state_t *cstate)
{
	struct block *b0, *b1;

	/* check for VLAN, including QinQ */
	b0 = FUNC0(cstate, ETHERTYPE_8021Q);
	b1 = FUNC0(cstate, ETHERTYPE_8021AD);
	FUNC1(b0,b1);
	b0 = b1;
	b1 = FUNC0(cstate, ETHERTYPE_8021QINQ);
	FUNC1(b0,b1);

	return b1;
}