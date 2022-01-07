
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t dname_len; int * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;


 int dname_remove_label (int **,size_t*) ;
 int nsec3_get_nextowner (struct ub_packed_rrset_key*,int,int **,size_t*) ;
 size_t nsec3_hash_to_b32 (int *,size_t,int *,size_t,int *,size_t) ;

size_t nsec3_get_nextowner_b32(struct ub_packed_rrset_key* rrset, int r,
 uint8_t* buf, size_t max)
{
 uint8_t* nm, *zone;
 size_t nmlen, zonelen;
 if(!nsec3_get_nextowner(rrset, r, &nm, &nmlen))
  return 0;

 zone = rrset->rk.dname;
 zonelen = rrset->rk.dname_len;
 dname_remove_label(&zone, &zonelen);
 return nsec3_hash_to_b32(nm, nmlen, zone, zonelen, buf, max);
}
