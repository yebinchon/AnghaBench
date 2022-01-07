
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct TYPE_6__ {struct packed_rrset_data* data; int hash; struct ub_packed_rrset_key* key; } ;
struct TYPE_5__ {size_t dname_len; int dname; scalar_t__ flags; int rrset_class; int type; } ;
struct ub_packed_rrset_key {TYPE_3__ entry; TYPE_2__ rk; } ;
struct regional {int dummy; } ;
struct query_info {size_t qname_len; int qname; } ;
struct packed_rrset_data {scalar_t__ ttl; int security; int count; size_t* rr_len; scalar_t__* rr_ttl; int ** rr_data; int trust; scalar_t__ rrsig_count; } ;
struct dns_msg {TYPE_1__* rep; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_4__ {int qdcount; scalar_t__ ttl; int an_numrrsets; int rrset_count; void* serve_expired_ttl; void* prefetch_ttl; struct ub_packed_rrset_key** rrsets; int flags; scalar_t__ ar_numrrsets; scalar_t__ ns_numrrsets; int security; scalar_t__ authoritative; } ;


 int BIT_QR ;
 size_t LDNS_MAX_DOMAINLEN ;
 int LDNS_RCODE_YXDOMAIN ;
 int LDNS_RR_TYPE_CNAME ;
 void* PREFETCH_TTL_CALC (scalar_t__) ;
 void* SERVE_EXPIRED_TTL ;
 struct dns_msg* gen_dns_msg (struct regional*,struct query_info*,int) ;
 int get_cname_target (struct ub_packed_rrset_key*,int **,size_t*) ;
 int htons (int ) ;
 int memcpy (int *,int ,size_t) ;
 int memmove (int *,int *,size_t) ;
 int memset (TYPE_3__*,int ,int) ;
 struct ub_packed_rrset_key* packed_rrset_copy_region (struct ub_packed_rrset_key*,struct regional*,scalar_t__) ;
 int packed_rrset_ptr_fixup (struct packed_rrset_data*) ;
 scalar_t__ regional_alloc (struct regional*,int) ;
 int regional_alloc_init (struct regional*,int ,int) ;
 scalar_t__ regional_alloc_zero (struct regional*,int) ;
 int rrset_key_hash (TYPE_2__*) ;
 int rrset_trust_ans_noAA ;
 int sec_status_unchecked ;
 int sldns_write_uint16 (int *,size_t) ;

__attribute__((used)) static struct dns_msg*
synth_dname_msg(struct ub_packed_rrset_key* rrset, struct regional* region,
 time_t now, struct query_info* q, enum sec_status* sec_status)
{
 struct dns_msg* msg;
 struct ub_packed_rrset_key* ck;
 struct packed_rrset_data* newd, *d = (struct packed_rrset_data*)
  rrset->entry.data;
 uint8_t* newname, *dtarg = ((void*)0);
 size_t newlen, dtarglen;
 if(now > d->ttl)
  return ((void*)0);


 *sec_status = d->security;


 msg = gen_dns_msg(region, q, 2);
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

 get_cname_target(rrset, &dtarg, &dtarglen);
 if(!dtarg)
  return ((void*)0);
 newlen = q->qname_len + dtarglen - rrset->rk.dname_len;
 if(newlen > LDNS_MAX_DOMAINLEN) {
  msg->rep->flags |= LDNS_RCODE_YXDOMAIN;
  return msg;
 }
 newname = (uint8_t*)regional_alloc(region, newlen);
 if(!newname)
  return ((void*)0);


 memcpy(newname, q->qname, q->qname_len-rrset->rk.dname_len);
 memmove(newname+(q->qname_len-rrset->rk.dname_len), dtarg, dtarglen);

 ck = (struct ub_packed_rrset_key*)regional_alloc(region,
  sizeof(struct ub_packed_rrset_key));
 if(!ck)
  return ((void*)0);
 memset(&ck->entry, 0, sizeof(ck->entry));
 msg->rep->rrsets[1] = ck;
 ck->entry.key = ck;
 ck->rk.type = htons(LDNS_RR_TYPE_CNAME);
 ck->rk.rrset_class = rrset->rk.rrset_class;
 ck->rk.flags = 0;
 ck->rk.dname = regional_alloc_init(region, q->qname, q->qname_len);
 if(!ck->rk.dname)
  return ((void*)0);
 ck->rk.dname_len = q->qname_len;
 ck->entry.hash = rrset_key_hash(&ck->rk);
 newd = (struct packed_rrset_data*)regional_alloc_zero(region,
  sizeof(struct packed_rrset_data) + sizeof(size_t) +
  sizeof(uint8_t*) + sizeof(time_t) + sizeof(uint16_t)
  + newlen);
 if(!newd)
  return ((void*)0);
 ck->entry.data = newd;
 newd->ttl = 0;
 newd->count = 1;
 newd->rrsig_count = 0;
 newd->trust = rrset_trust_ans_noAA;
 newd->rr_len = (size_t*)((uint8_t*)newd +
  sizeof(struct packed_rrset_data));
 newd->rr_len[0] = newlen + sizeof(uint16_t);
 packed_rrset_ptr_fixup(newd);
 newd->rr_ttl[0] = newd->ttl;
 msg->rep->ttl = newd->ttl;
 msg->rep->prefetch_ttl = PREFETCH_TTL_CALC(newd->ttl);
 msg->rep->serve_expired_ttl = newd->ttl + SERVE_EXPIRED_TTL;
 sldns_write_uint16(newd->rr_data[0], newlen);
 memmove(newd->rr_data[0] + sizeof(uint16_t), newname, newlen);
 msg->rep->an_numrrsets ++;
 msg->rep->rrset_count ++;
 return msg;
}
