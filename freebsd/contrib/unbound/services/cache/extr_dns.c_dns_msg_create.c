
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint16_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct rrset_ref {int dummy; } ;
struct reply_info {int qdcount; struct ub_packed_rrset_key** rrsets; int flags; } ;
struct regional {int dummy; } ;
struct TYPE_2__ {size_t qname_len; int * local_alias; void* qclass; void* qtype; int qname; } ;
struct dns_msg {struct reply_info* rep; TYPE_1__ qinfo; } ;


 int BIT_QR ;
 size_t RR_COUNT_MAX ;
 scalar_t__ regional_alloc (struct regional*,size_t) ;
 int regional_alloc_init (struct regional*,int *,size_t) ;
 scalar_t__ regional_alloc_zero (struct regional*,int) ;

struct dns_msg*
dns_msg_create(uint8_t* qname, size_t qnamelen, uint16_t qtype,
 uint16_t qclass, struct regional* region, size_t capacity)
{
 struct dns_msg* msg = (struct dns_msg*)regional_alloc(region,
  sizeof(struct dns_msg));
 if(!msg)
  return ((void*)0);
 msg->qinfo.qname = regional_alloc_init(region, qname, qnamelen);
 if(!msg->qinfo.qname)
  return ((void*)0);
 msg->qinfo.qname_len = qnamelen;
 msg->qinfo.qtype = qtype;
 msg->qinfo.qclass = qclass;
 msg->qinfo.local_alias = ((void*)0);

 msg->rep = (struct reply_info*)regional_alloc_zero(region,
  sizeof(struct reply_info)-sizeof(struct rrset_ref));
 if(!msg->rep)
  return ((void*)0);
 if(capacity > RR_COUNT_MAX)
  return ((void*)0);
 msg->rep->flags = BIT_QR;
 msg->rep->qdcount = 1;
 msg->rep->rrsets = (struct ub_packed_rrset_key**)
  regional_alloc(region,
  capacity*sizeof(struct ub_packed_rrset_key*));
 if(!msg->rep->rrsets)
  return ((void*)0);
 return msg;
}
