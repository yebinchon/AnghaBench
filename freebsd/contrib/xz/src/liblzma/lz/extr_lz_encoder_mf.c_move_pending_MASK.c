#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ read_pos; scalar_t__ write_pos; int /*<<< orphan*/  pending; } ;
typedef  TYPE_1__ lzma_mf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(lzma_mf *mf)
{
	++mf->read_pos;
	FUNC0(mf->read_pos <= mf->write_pos);
	++mf->pending;
}