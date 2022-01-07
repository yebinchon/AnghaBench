
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__* dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct nsec3_filter {int zone; } ;
struct nsec3_cached_hash {size_t b32_len; int b32; } ;


 scalar_t__ label_compare_lower (scalar_t__*,int ,size_t) ;
 scalar_t__ query_dname_compare (scalar_t__*,int ) ;

__attribute__((used)) static int
nsec3_hash_matches_owner(struct nsec3_filter* flt,
 struct nsec3_cached_hash* hash, struct ub_packed_rrset_key* s)
{
 uint8_t* nm = s->rk.dname;
 if(hash->b32_len != 0 && (size_t)nm[0] == hash->b32_len &&
  label_compare_lower(nm+1, hash->b32, hash->b32_len) == 0 &&
  query_dname_compare(nm+(size_t)nm[0]+1, flt->zone) == 0) {
  return 1;
 }
 return 0;
}
