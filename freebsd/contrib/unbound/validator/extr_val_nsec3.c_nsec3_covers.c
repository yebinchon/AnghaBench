
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__* dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct nsec3_cached_hash {size_t hash_len; size_t b32_len; int * hash; int b32; } ;
typedef int sldns_buffer ;


 scalar_t__ label_compare_lower (scalar_t__*,int ,size_t) ;
 scalar_t__ memcmp (int *,int *,size_t) ;
 int nsec3_get_nextowner (struct ub_packed_rrset_key*,int,int **,size_t*) ;
 scalar_t__ query_dname_compare (scalar_t__*,int *) ;
 int sldns_b32_pton_extended_hex (char*,size_t,int *,int ) ;
 int * sldns_buffer_begin (int *) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_limit (int *) ;

int
nsec3_covers(uint8_t* zone, struct nsec3_cached_hash* hash,
 struct ub_packed_rrset_key* rrset, int rr, sldns_buffer* buf)
{
 uint8_t* next, *owner;
 size_t nextlen;
 int len;
 if(!nsec3_get_nextowner(rrset, rr, &next, &nextlen))
  return 0;




 if(nextlen != hash->hash_len || hash->hash_len==0||hash->b32_len==0||
  (size_t)*rrset->rk.dname != hash->b32_len ||
  query_dname_compare(rrset->rk.dname+1+
   (size_t)*rrset->rk.dname, zone) != 0)
  return 0;


 if(label_compare_lower(rrset->rk.dname+1, hash->b32,
  hash->b32_len) < 0 &&
  memcmp(hash->hash, next, nextlen) < 0)
  return 1;


 sldns_buffer_clear(buf);
 owner = sldns_buffer_begin(buf);
 len = sldns_b32_pton_extended_hex((char*)rrset->rk.dname+1,
  hash->b32_len, owner, sldns_buffer_limit(buf));
 if(len<1)
  return 0;
 if((size_t)len != hash->hash_len || (size_t)len != nextlen)
  return 0;





 if(memcmp(next, owner, nextlen) <= 0 &&
  ( memcmp(hash->hash, owner, nextlen) > 0 ||
    memcmp(hash->hash, next, nextlen) < 0)) {
  return 1;
 }
 return 0;
}
