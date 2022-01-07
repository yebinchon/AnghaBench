
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packed_rrset_data {scalar_t__ count; int* rr_len; int* rr_data; } ;
struct auth_zone {int namelen; int name; } ;
struct auth_rrset {struct packed_rrset_data* data; } ;
struct auth_data {int dummy; } ;


 int LDNS_RR_TYPE_SOA ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,int ) ;
 struct auth_data* az_find_name (struct auth_zone*,int ,int ) ;
 int sldns_read_uint32 (int) ;

int
auth_zone_get_serial(struct auth_zone* z, uint32_t* serial)
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
 *serial = sldns_read_uint32(d->rr_data[0]+(d->rr_len[0]-20));
 return 1;
}
