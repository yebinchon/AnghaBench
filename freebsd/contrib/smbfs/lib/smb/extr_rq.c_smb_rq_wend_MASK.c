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
struct TYPE_2__ {int mb_count; } ;
struct smb_rq {int rq_wcount; TYPE_1__ rq_rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct smb_rq *rqp)
{
	if (rqp->rq_rq.mb_count & 1)
		FUNC0("smbrq_wend: odd word count\n", 0);
	rqp->rq_wcount = rqp->rq_rq.mb_count / 2;
	rqp->rq_rq.mb_count = 0;
}