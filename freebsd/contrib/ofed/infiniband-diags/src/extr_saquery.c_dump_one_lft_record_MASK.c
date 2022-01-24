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
struct query_params {int dummy; } ;
struct TYPE_2__ {int* lft; int /*<<< orphan*/  lid; int /*<<< orphan*/  block_num; } ;
typedef  TYPE_1__ ib_lft_record_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(void *data, struct query_params *p)
{
	ib_lft_record_t *lftr = data;
	unsigned block = FUNC0(lftr->block_num);
	int i;
	FUNC1("LFT Record dump:\n"
	       "\t\tLID........................%u\n"
	       "\t\tBlock......................%u\n"
	       "\t\tLFT:\n\t\tLID\tPort Number\n", FUNC0(lftr->lid), block);
	for (i = 0; i < 64; i++)
		FUNC1("\t\t%u\t%u\n", block * 64 + i, lftr->lft[i]);
	FUNC1("\n");
}