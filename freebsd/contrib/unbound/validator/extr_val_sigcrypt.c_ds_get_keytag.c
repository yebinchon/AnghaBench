
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ub_packed_rrset_key {int dummy; } ;


 int memmove (int *,int *,int) ;
 int ntohs (int ) ;
 int rrset_get_rdata (struct ub_packed_rrset_key*,size_t,int **,size_t*) ;

uint16_t
ds_get_keytag(struct ub_packed_rrset_key* ds_rrset, size_t ds_idx)
{
 uint16_t t;
 uint8_t* rdata;
 size_t len;
 rrset_get_rdata(ds_rrset, ds_idx, &rdata, &len);
 if(len < 2+2)
  return 0;
 memmove(&t, rdata+2, 2);
 return ntohs(t);
}
