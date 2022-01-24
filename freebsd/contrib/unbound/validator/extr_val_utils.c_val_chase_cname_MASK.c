#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct reply_info {size_t an_numrrsets; TYPE_2__** rrsets; } ;
struct query_info {int /*<<< orphan*/ * qname; int /*<<< orphan*/  qname_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  dname; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {TYPE_1__ rk; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(struct query_info* qchase, struct reply_info* rep,
	size_t* cname_skip) {
	size_t i;
	/* skip any DNAMEs, go to the CNAME for next part */
	for(i = *cname_skip; i < rep->an_numrrsets; i++) {
		if(FUNC1(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_CNAME &&
			FUNC2(qchase->qname, rep->rrsets[i]->
				rk.dname) == 0) {
			qchase->qname = NULL;
			FUNC0(rep->rrsets[i], &qchase->qname,
				&qchase->qname_len);
			if(!qchase->qname)
				return 0; /* bad CNAME rdata */
			(*cname_skip) = i+1;
			return 1;
		}
	}
	return 0; /* CNAME classified but no matching CNAME ?! */
}