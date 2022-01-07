
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dname_len; int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct TYPE_4__ {int qname_len; int qname; } ;
struct module_qstate {TYPE_2__ qinfo; struct dns_msg* return_msg; int region; } ;
struct dns_msg {int rep; TYPE_2__ qinfo; } ;


 int VERB_ALGO ;
 scalar_t__ regional_alloc (int ,int) ;
 struct ub_packed_rrset_key* reply_find_answer_rrset (TYPE_2__*,int ) ;
 int reply_info_copy (int ,int *,int ) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
dns64_adjust_ptr(struct module_qstate* qstate, struct module_qstate* super)
{
    struct ub_packed_rrset_key* answer;

    verbose(VERB_ALGO, "adjusting PTR reply");


    if (!(super->return_msg = (struct dns_msg*)regional_alloc(super->region,
                    sizeof(struct dns_msg))))
        return;
    super->return_msg->qinfo = super->qinfo;
    super->return_msg->rep = reply_info_copy(qstate->return_msg->rep, ((void*)0),
            super->region);





    answer = reply_find_answer_rrset(&qstate->qinfo, super->return_msg->rep);
    if(answer) {
     answer->rk.dname = super->qinfo.qname;
     answer->rk.dname_len = super->qinfo.qname_len;
    }
}
