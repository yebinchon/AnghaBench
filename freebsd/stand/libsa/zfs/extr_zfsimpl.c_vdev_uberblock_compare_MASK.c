#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int ub_txg; unsigned int ub_timestamp; } ;
typedef  TYPE_1__ uberblock_t ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC4(const uberblock_t *ub1, const uberblock_t *ub2)
{
	unsigned int seq1 = 0;
	unsigned int seq2 = 0;
	int cmp = FUNC0(ub1->ub_txg, ub2->ub_txg);

	if (cmp != 0)
		return (cmp);

	cmp = FUNC0(ub1->ub_timestamp, ub2->ub_timestamp);
	if (cmp != 0)
		return (cmp);

	if (FUNC3(ub1) && FUNC2(ub1))
		seq1 = FUNC1(ub1);

	if (FUNC3(ub2) && FUNC2(ub2))
		seq2 = FUNC1(ub2);

	return (FUNC0(seq1, seq2));
}