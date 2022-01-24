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
struct TYPE_3__ {int /*<<< orphan*/  dname_len; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct TYPE_4__ {int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct module_qstate {TYPE_2__ qinfo; struct dns_msg* return_msg; int /*<<< orphan*/  region; } ;
struct dns_msg {int /*<<< orphan*/  rep; TYPE_2__ qinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct ub_packed_rrset_key* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct module_qstate* qstate, struct module_qstate* super)
{
    struct ub_packed_rrset_key* answer;

    FUNC3(VERB_ALGO, "adjusting PTR reply");

    /* Copy the sub-query's reply to the parent. */
    if (!(super->return_msg = (struct dns_msg*)FUNC0(super->region,
                    sizeof(struct dns_msg))))
        return;
    super->return_msg->qinfo = super->qinfo;
    super->return_msg->rep = FUNC2(qstate->return_msg->rep, NULL,
            super->region);

    /*
     * Adjust the domain name of the answer RR set so that it matches the
     * initial query's domain name.
     */
    answer = FUNC1(&qstate->qinfo, super->return_msg->rep);
    if(answer) {
	    answer->rk.dname = super->qinfo.qname;
	    answer->rk.dname_len = super->qinfo.qname_len;
    }
}