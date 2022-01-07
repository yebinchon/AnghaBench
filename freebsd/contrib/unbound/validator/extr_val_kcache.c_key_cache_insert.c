
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct module_qstate {TYPE_2__* env; scalar_t__ errinf; } ;
struct TYPE_6__ {int data; int hash; } ;
struct key_entry_key {TYPE_3__ entry; } ;
struct key_cache {int slab; } ;
struct TYPE_5__ {TYPE_1__* cfg; } ;
struct TYPE_4__ {int val_log_level; } ;


 int errinf_to_str_bogus (struct module_qstate*) ;
 struct key_entry_key* key_entry_copy (struct key_entry_key*) ;
 int key_entry_hash (struct key_entry_key*) ;
 scalar_t__ key_entry_isbad (struct key_entry_key*) ;
 int key_entry_set_reason (struct key_entry_key*,int ) ;
 int slabhash_insert (int ,int ,TYPE_3__*,int ,int *) ;

void
key_cache_insert(struct key_cache* kcache, struct key_entry_key* kkey,
 struct module_qstate* qstate)
{
 struct key_entry_key* k = key_entry_copy(kkey);
 if(!k)
  return;
 if(key_entry_isbad(k) && qstate->errinf &&
  qstate->env->cfg->val_log_level >= 2) {

  key_entry_set_reason(k, errinf_to_str_bogus(qstate));
 }
 key_entry_hash(k);
 slabhash_insert(kcache->slab, k->entry.hash, &k->entry,
  k->entry.data, ((void*)0));
}
