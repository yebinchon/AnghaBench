
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {int dummy; } ;


 int ds_digest_algo_is_supported (struct ub_packed_rrset_key*,size_t) ;
 int ds_get_digest_algo (struct ub_packed_rrset_key*,size_t) ;
 int ds_key_algo_is_supported (struct ub_packed_rrset_key*,size_t) ;
 size_t rrset_get_count (struct ub_packed_rrset_key*) ;

int val_favorite_ds_algo(struct ub_packed_rrset_key* ds_rrset)
{
 size_t i, num = rrset_get_count(ds_rrset);
 int d, digest_algo = 0;

 for(i=0; i<num; i++) {
  if(!ds_digest_algo_is_supported(ds_rrset, i) ||
   !ds_key_algo_is_supported(ds_rrset, i)) {
   continue;
  }
  d = ds_get_digest_algo(ds_rrset, i);
  if(d > digest_algo)
   digest_algo = d;
 }
 return digest_algo;
}
