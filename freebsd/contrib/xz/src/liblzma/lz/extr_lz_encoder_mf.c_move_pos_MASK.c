#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cyclic_pos; scalar_t__ cyclic_size; scalar_t__ read_pos; scalar_t__ write_pos; scalar_t__ offset; } ;
typedef  TYPE_1__ lzma_mf ;

/* Variables and functions */
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(lzma_mf *mf)
{
	if (++mf->cyclic_pos == mf->cyclic_size)
		mf->cyclic_pos = 0;

	++mf->read_pos;
	FUNC0(mf->read_pos <= mf->write_pos);

	if (FUNC2(mf->read_pos + mf->offset == UINT32_MAX))
		FUNC1(mf);
}