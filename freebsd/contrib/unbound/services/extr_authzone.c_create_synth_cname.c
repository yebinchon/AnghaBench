
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int time_t ;
struct TYPE_6__ {struct packed_rrset_data* data; int hash; struct ub_packed_rrset_key* key; } ;
struct TYPE_5__ {size_t dname_len; int dname; scalar_t__ flags; void* rrset_class; void* type; } ;
struct ub_packed_rrset_key {TYPE_3__ entry; TYPE_2__ rk; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int count; size_t* rr_len; scalar_t__* rr_data; scalar_t__ ttl; scalar_t__* rr_ttl; int trust; scalar_t__ rrsig_count; } ;
struct auth_rrset {TYPE_1__* data; } ;
struct auth_data {int namelen; } ;
typedef int buf ;
struct TYPE_4__ {int count; int* rr_len; int ** rr_data; } ;


 int LDNS_MAX_DOMAINLEN ;
 int LDNS_RR_TYPE_CNAME ;
 size_t dname_valid (int *,size_t) ;
 void* htons (int ) ;
 int memmove (scalar_t__,int *,size_t) ;
 int memset (TYPE_3__*,int ,int) ;
 int packed_rrset_ptr_fixup (struct packed_rrset_data*) ;
 scalar_t__ regional_alloc (struct regional*,int) ;
 int regional_alloc_init (struct regional*,int *,size_t) ;
 scalar_t__ regional_alloc_zero (struct regional*,int) ;
 int rrset_key_hash (TYPE_2__*) ;
 int rrset_trust_ans_noAA ;
 size_t sldns_read_uint16 (int *) ;
 int sldns_write_uint16 (scalar_t__,size_t) ;
 size_t synth_cname_buf (int *,size_t,int ,int *,size_t,int *,int) ;

__attribute__((used)) static int
create_synth_cname(uint8_t* qname, size_t qname_len, struct regional* region,
 struct auth_data* node, struct auth_rrset* dname, uint16_t dclass,
 struct ub_packed_rrset_key** cname)
{
 uint8_t buf[LDNS_MAX_DOMAINLEN];
 uint8_t* dtarg;
 size_t dtarglen, newlen;
 struct packed_rrset_data* d;


 if(dname->data->count < 1) return 0;
 if(dname->data->rr_len[0] < 3) return 0;
 dtarg = dname->data->rr_data[0]+2;
 dtarglen = dname->data->rr_len[0]-2;
 if(sldns_read_uint16(dname->data->rr_data[0]) != dtarglen)
  return 0;
 if(dname_valid(dtarg, dtarglen) != dtarglen)
  return 0;


 newlen = synth_cname_buf(qname, qname_len, node->namelen,
  dtarg, dtarglen, buf, sizeof(buf));
 if(newlen == 0) {

  *cname = ((void*)0);
  return 1;
 }
 *cname = (struct ub_packed_rrset_key*)regional_alloc(region,
  sizeof(struct ub_packed_rrset_key));
 if(!*cname)
  return 0;
 memset(&(*cname)->entry, 0, sizeof((*cname)->entry));
 (*cname)->entry.key = (*cname);
 (*cname)->rk.type = htons(LDNS_RR_TYPE_CNAME);
 (*cname)->rk.rrset_class = htons(dclass);
 (*cname)->rk.flags = 0;
 (*cname)->rk.dname = regional_alloc_init(region, qname, qname_len);
 if(!(*cname)->rk.dname)
  return 0;
 (*cname)->rk.dname_len = qname_len;
 (*cname)->entry.hash = rrset_key_hash(&(*cname)->rk);
 d = (struct packed_rrset_data*)regional_alloc_zero(region,
  sizeof(struct packed_rrset_data) + sizeof(size_t) +
  sizeof(uint8_t*) + sizeof(time_t) + sizeof(uint16_t)
  + newlen);
 if(!d)
  return 0;
 (*cname)->entry.data = d;
 d->ttl = 0;
 d->count = 1;
 d->rrsig_count = 0;
 d->trust = rrset_trust_ans_noAA;
 d->rr_len = (size_t*)((uint8_t*)d +
  sizeof(struct packed_rrset_data));
 d->rr_len[0] = newlen + sizeof(uint16_t);
 packed_rrset_ptr_fixup(d);
 d->rr_ttl[0] = d->ttl;
 sldns_write_uint16(d->rr_data[0], newlen);
 memmove(d->rr_data[0] + sizeof(uint16_t), buf, newlen);
 return 1;
}
