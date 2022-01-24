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
typedef  int /*<<< orphan*/  u_char ;
struct smb_rq {int /*<<< orphan*/  rq_rp; int /*<<< orphan*/  rq_rq; struct smb_ctx* rq_ctx; int /*<<< orphan*/  rq_cmd; } ;
struct smb_ctx {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t M_MINSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct smb_rq*,int) ; 
 struct smb_rq* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC3(struct smb_ctx *ctx, u_char cmd, size_t rpbufsz, struct smb_rq **rqpp)
{
	struct smb_rq *rqp;

	rqp = FUNC1(sizeof(*rqp));
	if (rqp == NULL)
		return ENOMEM;
	FUNC0(rqp, sizeof(*rqp));
	rqp->rq_cmd = cmd;
	rqp->rq_ctx = ctx;
	FUNC2(&rqp->rq_rq, M_MINSIZE);
	FUNC2(&rqp->rq_rp, rpbufsz);
	*rqpp = rqp;
	return 0;
}