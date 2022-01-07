
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct query_info {int dummy; } ;
struct nsec3_filter {int zone; } ;
struct module_env {int dummy; } ;
struct key_entry_key {int dummy; } ;
typedef int rbtree_type ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;


 int VERB_ALGO ;
 int filter_init (struct nsec3_filter*,struct ub_packed_rrset_key**,size_t,struct query_info*) ;
 int key_entry_isgood (struct key_entry_key*) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 int nsec3_do_prove_nameerror (struct module_env*,struct nsec3_filter*,int *,struct query_info*) ;
 int nsec3_hash_cmp ;
 scalar_t__ nsec3_iteration_count_high (struct val_env*,struct nsec3_filter*,struct key_entry_key*) ;
 int rbtree_init (int *,int *) ;
 int sec_status_bogus ;
 int sec_status_insecure ;

enum sec_status
nsec3_prove_nameerror(struct module_env* env, struct val_env* ve,
 struct ub_packed_rrset_key** list, size_t num,
 struct query_info* qinfo, struct key_entry_key* kkey)
{
 rbtree_type ct;
 struct nsec3_filter flt;

 if(!list || num == 0 || !kkey || !key_entry_isgood(kkey))
  return sec_status_bogus;
 rbtree_init(&ct, &nsec3_hash_cmp);
 filter_init(&flt, list, num, qinfo);
 if(!flt.zone)
  return sec_status_bogus;
 if(nsec3_iteration_count_high(ve, &flt, kkey))
  return sec_status_insecure;
 log_nametypeclass(VERB_ALGO, "start nsec3 nameerror proof, zone",
  flt.zone, 0, 0);
 return nsec3_do_prove_nameerror(env, &flt, &ct, qinfo);
}
