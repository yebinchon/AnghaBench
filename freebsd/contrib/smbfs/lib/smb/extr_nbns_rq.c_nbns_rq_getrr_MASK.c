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
struct nbns_rr {int rr_type; int rr_class; int rr_rdlength; int /*<<< orphan*/ * rr_data; int /*<<< orphan*/  rr_ttl; int /*<<< orphan*/ * rr_name; } ;
struct mbdata {int /*<<< orphan*/ * mb_pos; } ;
struct nbns_rq {struct mbdata nr_rp; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBERR_INVALIDRESPONSE ; 
 int /*<<< orphan*/  FUNC1 (struct nbns_rr*,int) ; 
 int FUNC2 (struct mbdata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbdata*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbdata*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct nbns_rq *rqp, struct nbns_rr *rrp)
{
	struct mbdata *mbp = &rqp->nr_rp;
	u_char *cp;
	int error, len;

	FUNC1(rrp, sizeof(*rrp));
	cp = mbp->mb_pos;
	len = FUNC5(cp);
	if (len < 1)
		return FUNC0(NBERR_INVALIDRESPONSE);
	rrp->rr_name = cp;
	error = FUNC2(mbp, NULL, len);
	if (error)
		return error;
	FUNC3(mbp, &rrp->rr_type);
	FUNC3(mbp, &rrp->rr_class);
	FUNC4(mbp, &rrp->rr_ttl);
	FUNC3(mbp, &rrp->rr_rdlength);
	rrp->rr_data = mbp->mb_pos;
	error = FUNC2(mbp, NULL, rrp->rr_rdlength);
	return error;
}