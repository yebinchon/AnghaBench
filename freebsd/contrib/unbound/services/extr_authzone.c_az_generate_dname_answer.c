
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regional {int dummy; } ;
struct query_info {int qtype; int qname_len; int qname; } ;
struct packed_rrset_data {int dummy; } ;
struct dns_msg {TYPE_3__* rep; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {int dummy; } ;
struct TYPE_6__ {int rrset_count; TYPE_2__** rrsets; int flags; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_5__ {TYPE_1__ entry; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 scalar_t__ LDNS_RCODE_YXDOMAIN ;
 int add_synth_cname (struct auth_zone*,int ,int ,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;
 int follow_cname_chain (struct auth_zone*,int ,struct regional*,struct dns_msg*,struct packed_rrset_data*) ;
 int log_assert (struct auth_data*) ;
 int msg_add_rrset_an (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;

__attribute__((used)) static int
az_generate_dname_answer(struct auth_zone* z, struct query_info* qinfo,
 struct regional* region, struct dns_msg* msg, struct auth_data* ce,
 struct auth_rrset* rrset)
{
 log_assert(ce);

 if(!msg_add_rrset_an(z, region, msg, ce, rrset)) return 0;
 if(!add_synth_cname(z, qinfo->qname, qinfo->qname_len, region,
  msg, ce, rrset)) return 0;
 if(FLAGS_GET_RCODE(msg->rep->flags) == LDNS_RCODE_YXDOMAIN)
  return 1;
 if(msg->rep->rrset_count == 0 ||
  !msg->rep->rrsets[msg->rep->rrset_count-1])
  return 0;
 if(!follow_cname_chain(z, qinfo->qtype, region, msg,
  (struct packed_rrset_data*)msg->rep->rrsets[
  msg->rep->rrset_count-1]->entry.data))
  return 0;
 return 1;
}
