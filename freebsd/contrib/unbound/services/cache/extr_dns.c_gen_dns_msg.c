
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_packed_rrset_key {int dummy; } ;
struct rrset_ref {int dummy; } ;
struct reply_info {struct ub_packed_rrset_key** rrsets; } ;
struct regional {int dummy; } ;
struct query_info {int qname_len; int qname; } ;
struct TYPE_2__ {int qname; } ;
struct dns_msg {struct reply_info* rep; TYPE_1__ qinfo; } ;


 size_t RR_COUNT_MAX ;
 int memcpy (TYPE_1__*,struct query_info*,int) ;
 scalar_t__ regional_alloc (struct regional*,size_t) ;
 int regional_alloc_init (struct regional*,int ,int ) ;

__attribute__((used)) static struct dns_msg*
gen_dns_msg(struct regional* region, struct query_info* q, size_t num)
{
 struct dns_msg* msg = (struct dns_msg*)regional_alloc(region,
  sizeof(struct dns_msg));
 if(!msg)
  return ((void*)0);
 memcpy(&msg->qinfo, q, sizeof(struct query_info));
 msg->qinfo.qname = regional_alloc_init(region, q->qname, q->qname_len);
 if(!msg->qinfo.qname)
  return ((void*)0);

 msg->rep = (struct reply_info*)regional_alloc(region,
  sizeof(struct reply_info) - sizeof(struct rrset_ref));
 if(!msg->rep)
  return ((void*)0);
 if(num > RR_COUNT_MAX)
  return ((void*)0);
 msg->rep->rrsets = (struct ub_packed_rrset_key**)
  regional_alloc(region,
  num * sizeof(struct ub_packed_rrset_key*));
 if(!msg->rep->rrsets)
  return ((void*)0);
 return msg;
}
