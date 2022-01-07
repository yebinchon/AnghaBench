
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct nsec3_filter {int dummy; } ;
struct nsec3_cached_hash {int dummy; } ;
struct module_env {int scratch_buffer; int scratch; } ;
typedef int rbtree_type ;


 struct ub_packed_rrset_key* filter_first (struct nsec3_filter*,size_t*,int*) ;
 struct ub_packed_rrset_key* filter_next (struct nsec3_filter*,size_t*,int*) ;
 int log_err (char*) ;
 scalar_t__ nsec3_hash_matches_owner (struct nsec3_filter*,struct nsec3_cached_hash*,struct ub_packed_rrset_key*) ;
 int nsec3_hash_name (int *,int ,int ,struct ub_packed_rrset_key*,int,int *,size_t,struct nsec3_cached_hash**) ;

__attribute__((used)) static int
find_matching_nsec3(struct module_env* env, struct nsec3_filter* flt,
 rbtree_type* ct, uint8_t* nm, size_t nmlen,
 struct ub_packed_rrset_key** rrset, int* rr)
{
 size_t i_rs;
 int i_rr;
 struct ub_packed_rrset_key* s;
 struct nsec3_cached_hash* hash = ((void*)0);
 int r;


 for(s=filter_first(flt, &i_rs, &i_rr); s;
  s=filter_next(flt, &i_rs, &i_rr)) {

  r = nsec3_hash_name(ct, env->scratch, env->scratch_buffer,
   s, i_rr, nm, nmlen, &hash);
  if(r == 0) {
   log_err("nsec3: malloc failure");
   break;
  } else if(r != 1)
   continue;
  else if(nsec3_hash_matches_owner(flt, hash, s)) {
   *rrset = s;
   *rr = i_rr;
   return 1;
  }
 }
 *rrset = ((void*)0);
 *rr = 0;
 return 0;
}
