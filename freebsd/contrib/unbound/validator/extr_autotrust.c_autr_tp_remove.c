
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_9__ {int dname; } ;
struct ub_packed_rrset_key {TYPE_3__ rk; } ;
struct TYPE_8__ {struct trust_anchor* key; } ;
struct TYPE_7__ {struct trust_anchor* key; } ;
struct trust_anchor {int revoked; scalar_t__ next_probe_time; struct trust_anchor* autr; int lock; int dclass; int namelabs; int namelen; int name; TYPE_2__ pnode; TYPE_1__ node; } ;
struct module_env {TYPE_5__* anchors; } ;
struct autr_point_data {int revoked; scalar_t__ next_probe_time; struct autr_point_data* autr; int lock; int dclass; int namelabs; int namelen; int name; TYPE_2__ pnode; TYPE_1__ node; } ;
typedef int pd ;
typedef int key ;
struct TYPE_11__ {int lock; TYPE_4__* autr; int * tree; } ;
struct TYPE_10__ {int probe; } ;


 int LDNS_RR_TYPE_DNSKEY ;
 int VERB_OPS ;
 int anchors_init_parents_locked (TYPE_5__*) ;
 int autr_point_delete (struct trust_anchor*) ;
 int autr_write_file (struct module_env*,struct trust_anchor*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 int memset (struct trust_anchor*,int ,int) ;
 scalar_t__ rbtree_delete (int *,struct trust_anchor*) ;
 int reset_worker_timer (struct module_env*) ;
 scalar_t__ wait_probe_time (TYPE_5__*) ;

__attribute__((used)) static void
autr_tp_remove(struct module_env* env, struct trust_anchor* tp,
 struct ub_packed_rrset_key* dnskey_rrset)
{
 struct trust_anchor* del_tp;
 struct trust_anchor key;
 struct autr_point_data pd;
 time_t mold, mnew;

 log_nametypeclass(VERB_OPS, "trust point was revoked",
  tp->name, LDNS_RR_TYPE_DNSKEY, tp->dclass);
 tp->autr->revoked = 1;


 memset(&key, 0, sizeof(key));
 memset(&pd, 0, sizeof(pd));
 key.autr = &pd;
 key.node.key = &key;
 pd.pnode.key = &key;
 pd.next_probe_time = tp->autr->next_probe_time;
 key.name = dnskey_rrset->rk.dname;
 key.namelen = tp->namelen;
 key.namelabs = tp->namelabs;
 key.dclass = tp->dclass;


 lock_basic_unlock(&tp->lock);


 lock_basic_lock(&env->anchors->lock);
 del_tp = (struct trust_anchor*)rbtree_delete(env->anchors->tree, &key);
 mold = wait_probe_time(env->anchors);
 (void)rbtree_delete(&env->anchors->autr->probe, &key);
 mnew = wait_probe_time(env->anchors);
 anchors_init_parents_locked(env->anchors);
 lock_basic_unlock(&env->anchors->lock);




 if(del_tp) {

  del_tp->autr->next_probe_time = 0;
  autr_write_file(env, del_tp);


  autr_point_delete(del_tp);
 }
 if(mold != mnew) {
  reset_worker_timer(env);
 }
}
