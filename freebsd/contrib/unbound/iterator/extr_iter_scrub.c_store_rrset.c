
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {int * data; } ;
struct ub_packed_rrset_key {int id; TYPE_1__ entry; } ;
struct rrset_ref {int id; struct ub_packed_rrset_key* key; } ;
struct rrset_parse {int dummy; } ;
struct packed_rrset_data {int dummy; } ;
struct msg_parse {int dummy; } ;
struct module_env {int alloc; int rrset_cache; int * now; } ;
typedef int sldns_buffer ;


 struct ub_packed_rrset_key* alloc_special_obtain (int ) ;
 int alloc_special_release (int ,struct ub_packed_rrset_key*) ;
 int packed_rrset_ttl_add (struct packed_rrset_data*,int ) ;
 int parse_copy_decompress_rrset (int *,struct msg_parse*,struct rrset_parse*,int *,struct ub_packed_rrset_key*) ;
 int rrset_cache_update (int ,struct rrset_ref*,int ,int ) ;

__attribute__((used)) static void
store_rrset(sldns_buffer* pkt, struct msg_parse* msg, struct module_env* env,
 struct rrset_parse* rrset)
{
 struct ub_packed_rrset_key* k;
 struct packed_rrset_data* d;
 struct rrset_ref ref;
 time_t now = *env->now;

 k = alloc_special_obtain(env->alloc);
 if(!k)
  return;
 k->entry.data = ((void*)0);
 if(!parse_copy_decompress_rrset(pkt, msg, rrset, ((void*)0), k)) {
  alloc_special_release(env->alloc, k);
  return;
 }
 d = (struct packed_rrset_data*)k->entry.data;
 packed_rrset_ttl_add(d, now);
 ref.key = k;
 ref.id = k->id;

 (void)rrset_cache_update(env->rrset_cache, &ref, env->alloc, now);
}
