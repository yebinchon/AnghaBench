
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_rrset_data {scalar_t__ count; int* rr_len; int* rr_data; } ;
struct auth_zone {int namelen; int name; } ;
struct auth_xfer {int have_zone; void* expiry; void* retry; void* refresh; void* serial; } ;
struct auth_rrset {struct packed_rrset_data* data; } ;
struct auth_data {int dummy; } ;


 int LDNS_RR_TYPE_SOA ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,int ) ;
 struct auth_data* az_find_name (struct auth_zone*,int ,int ) ;
 void* sldns_read_uint32 (int) ;

__attribute__((used)) static int
xfr_find_soa(struct auth_zone* z, struct auth_xfer* xfr)
{
 struct auth_data* apex;
 struct auth_rrset* soa;
 struct packed_rrset_data* d;
 apex = az_find_name(z, z->name, z->namelen);
 if(!apex) return 0;
 soa = az_domain_rrset(apex, LDNS_RR_TYPE_SOA);
 if(!soa || soa->data->count==0)
  return 0;
 if(soa->data->rr_len[0] < 2+4*5) return 0;


 d = soa->data;
 xfr->have_zone = 1;
 xfr->serial = sldns_read_uint32(d->rr_data[0]+(d->rr_len[0]-20));
 xfr->refresh = sldns_read_uint32(d->rr_data[0]+(d->rr_len[0]-16));
 xfr->retry = sldns_read_uint32(d->rr_data[0]+(d->rr_len[0]-12));
 xfr->expiry = sldns_read_uint32(d->rr_data[0]+(d->rr_len[0]-8));

 return 1;
}
