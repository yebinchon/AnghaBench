
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct packed_rrset_data {scalar_t__ ttl; } ;
struct dns_msg {TYPE_2__* rep; } ;
struct TYPE_4__ {int qdcount; int an_numrrsets; int rrset_count; int * rrsets; scalar_t__ ar_numrrsets; scalar_t__ ns_numrrsets; int security; scalar_t__ ttl; scalar_t__ serve_expired_ttl; int prefetch_ttl; scalar_t__ authoritative; int flags; } ;


 int BIT_QR ;
 int PREFETCH_TTL_CALC (scalar_t__) ;
 scalar_t__ SERVE_EXPIRED_TTL ;
 struct dns_msg* gen_dns_msg (struct regional*,struct query_info*,int) ;
 int packed_rrset_copy_region (struct ub_packed_rrset_key*,struct regional*,scalar_t__) ;
 int sec_status_unchecked ;

__attribute__((used)) static struct dns_msg*
rrset_msg(struct ub_packed_rrset_key* rrset, struct regional* region,
 time_t now, struct query_info* q)
{
 struct dns_msg* msg;
 struct packed_rrset_data* d = (struct packed_rrset_data*)
  rrset->entry.data;
 if(now > d->ttl)
  return ((void*)0);
 msg = gen_dns_msg(region, q, 1);
 if(!msg)
  return ((void*)0);
 msg->rep->flags = BIT_QR;
        msg->rep->authoritative = 0;
 msg->rep->qdcount = 1;
 msg->rep->ttl = d->ttl - now;
 msg->rep->prefetch_ttl = PREFETCH_TTL_CALC(msg->rep->ttl);
 msg->rep->serve_expired_ttl = msg->rep->ttl + SERVE_EXPIRED_TTL;
 msg->rep->security = sec_status_unchecked;
 msg->rep->an_numrrsets = 1;
 msg->rep->ns_numrrsets = 0;
 msg->rep->ar_numrrsets = 0;
 msg->rep->rrset_count = 1;
 msg->rep->rrsets[0] = packed_rrset_copy_region(rrset, region, now);
 if(!msg->rep->rrsets[0])
  return ((void*)0);
 return msg;
}
