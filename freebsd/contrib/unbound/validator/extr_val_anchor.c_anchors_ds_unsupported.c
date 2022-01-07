
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust_anchor {size_t numDS; int ds_rrset; } ;


 int ds_digest_algo_is_supported (int ,size_t) ;
 int ds_key_algo_is_supported (int ,size_t) ;

__attribute__((used)) static size_t
anchors_ds_unsupported(struct trust_anchor* ta)
{
 size_t i, num = 0;
 for(i=0; i<ta->numDS; i++) {
  if(!ds_digest_algo_is_supported(ta->ds_rrset, i) ||
   !ds_key_algo_is_supported(ta->ds_rrset, i))
   num++;
 }
 return num;
}
