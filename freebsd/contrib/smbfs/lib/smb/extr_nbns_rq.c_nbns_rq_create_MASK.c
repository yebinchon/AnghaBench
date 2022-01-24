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
typedef  int /*<<< orphan*/  u_int16_t ;
struct nbns_rq {int nr_opcode; scalar_t__ nr_trnid; struct nb_ctx* nr_nbd; int /*<<< orphan*/  nr_rq; } ;
struct nb_ctx {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NBDG_MAXSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct nbns_rq*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nbns_rq*) ; 
 struct nbns_rq* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(int opcode, struct nb_ctx *ctx, struct nbns_rq **rqpp)
{
	struct nbns_rq *rqp;
	static u_int16_t trnid;
	int error;

	rqp = FUNC2(sizeof(*rqp));
	if (rqp == NULL)
		return ENOMEM;
	FUNC0(rqp, sizeof(*rqp));
	error = FUNC3(&rqp->nr_rq, NBDG_MAXSIZE);
	if (error) {
		FUNC1(rqp);
		return error;
	}
	rqp->nr_opcode = opcode;
	rqp->nr_nbd = ctx;
	rqp->nr_trnid = trnid++;
	*rqpp = rqp;
	return 0;
}