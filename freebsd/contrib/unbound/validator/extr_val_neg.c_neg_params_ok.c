
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_neg_zone {int nsec3_hash; size_t nsec3_iter; size_t nsec3_saltlen; int nsec3_salt; } ;
struct ub_packed_rrset_key {int dummy; } ;


 scalar_t__ memcmp (int ,int *,size_t) ;
 int nsec3_get_params (struct ub_packed_rrset_key*,int ,int*,size_t*,int **,size_t*) ;

__attribute__((used)) static int
neg_params_ok(struct val_neg_zone* zone, struct ub_packed_rrset_key* rrset)
{
 int h;
 uint8_t* s;
 size_t slen, it;
 if(!nsec3_get_params(rrset, 0, &h, &it, &s, &slen))
  return 0;
 return (h == zone->nsec3_hash && it == zone->nsec3_iter &&
  slen == zone->nsec3_saltlen &&
  memcmp(zone->nsec3_salt, s, slen) == 0);
}
