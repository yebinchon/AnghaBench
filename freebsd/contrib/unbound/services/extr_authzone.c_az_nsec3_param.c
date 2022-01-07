
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct auth_zone {int namelen; int name; } ;
struct auth_rrset {TYPE_1__* data; } ;
struct auth_data {int dummy; } ;
struct TYPE_2__ {size_t count; size_t** rr_data; size_t* rr_len; } ;


 int LDNS_RR_TYPE_NSEC3PARAM ;
 size_t NSEC3_UNKNOWN_FLAGS ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,int ) ;
 struct auth_data* az_find_name (struct auth_zone*,int ,int ) ;
 int nsec3_hash_algo_size_supported (int) ;
 size_t sldns_read_uint16 (size_t*) ;

__attribute__((used)) static int
az_nsec3_param(struct auth_zone* z, int* algo, size_t* iter, uint8_t** salt,
 size_t* saltlen)
{
 struct auth_data* apex;
 struct auth_rrset* param;
 size_t i;
 apex = az_find_name(z, z->name, z->namelen);
 if(!apex) return 0;
 param = az_domain_rrset(apex, LDNS_RR_TYPE_NSEC3PARAM);
 if(!param || param->data->count==0)
  return 0;


 for(i=0; i<param->data->count; i++) {
  uint8_t* rdata = param->data->rr_data[i]+2;
  size_t rdatalen = param->data->rr_len[i];
  if(rdatalen < 2+5)
   continue;
  if(!nsec3_hash_algo_size_supported((int)(rdata[0])))
   continue;
  if(rdatalen < (size_t)(2+5+(size_t)rdata[4]))
   continue;
  if((rdata[1]&NSEC3_UNKNOWN_FLAGS)!=0)
   continue;
  *algo = (int)(rdata[0]);
  *iter = sldns_read_uint16(rdata+2);
  *saltlen = rdata[4];
  if(*saltlen == 0)
   *salt = ((void*)0);
  else *salt = rdata+5;
  return 1;
 }

 return 0;
}
