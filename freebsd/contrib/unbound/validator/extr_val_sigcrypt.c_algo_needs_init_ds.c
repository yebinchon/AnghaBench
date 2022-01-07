
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct algo_needs {int* needs; size_t num; } ;


 int ALGO_NEEDS_MAX ;
 int dnskey_algo_id_is_supported (int) ;
 int ds_get_digest_algo (struct ub_packed_rrset_key*,size_t) ;
 int ds_get_key_algo (struct ub_packed_rrset_key*,size_t) ;
 int log_assert (int) ;
 int memset (int*,int ,int) ;
 size_t rrset_get_count (struct ub_packed_rrset_key*) ;

void algo_needs_init_ds(struct algo_needs* n, struct ub_packed_rrset_key* ds,
 int fav_ds_algo, uint8_t* sigalg)
{
 uint8_t algo;
 size_t i, total = 0;
 size_t num = rrset_get_count(ds);

 memset(n->needs, 0, sizeof(uint8_t)*ALGO_NEEDS_MAX);
 for(i=0; i<num; i++) {
  if(ds_get_digest_algo(ds, i) != fav_ds_algo)
   continue;
  algo = (uint8_t)ds_get_key_algo(ds, i);
  if(!dnskey_algo_id_is_supported((int)algo))
   continue;
  log_assert(algo != 0);
  if(n->needs[algo] == 0) {
   n->needs[algo] = 1;
   sigalg[total] = algo;
   total++;
  }
 }
 sigalg[total] = 0;
 n->num = total;
}
