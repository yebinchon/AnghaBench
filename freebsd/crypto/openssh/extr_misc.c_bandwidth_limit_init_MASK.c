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
typedef  int /*<<< orphan*/  u_int64_t ;
struct bwlimit {size_t buflen; int /*<<< orphan*/  bwend; int /*<<< orphan*/  bwstart; scalar_t__ lamt; int /*<<< orphan*/  rate; int /*<<< orphan*/  thresh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct bwlimit *bw, u_int64_t kbps, size_t buflen)
{
	bw->buflen = buflen;
	bw->rate = kbps;
	bw->thresh = bw->rate;
	bw->lamt = 0;
	FUNC0(&bw->bwstart);
	FUNC0(&bw->bwend);
}