
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_7__ {int dname_len; int dname; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; } ;
struct TYPE_6__ {struct trust_anchor* key; } ;
struct trust_anchor {TYPE_4__* autr; int lock; int dclass; int name; int namelabs; int namelen; TYPE_1__ node; } ;
struct module_env {scalar_t__* now; TYPE_5__* anchors; } ;
struct TYPE_10__ {int lock; TYPE_3__* autr; int tree; } ;
struct TYPE_9__ {scalar_t__ next_probe_time; int pnode; int query_interval; } ;
struct TYPE_8__ {int probe; } ;


 int VERB_ALGO ;
 scalar_t__ calc_next_probe (struct module_env*,int ) ;
 int dname_count_labels (int ) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_assert (int) ;
 int rbtree_delete (int *,struct trust_anchor*) ;
 int rbtree_insert (int *,int *) ;
 scalar_t__ rbtree_search (int ,struct trust_anchor*) ;
 int reset_worker_timer (struct module_env*) ;
 int verbose (int ,char*,...) ;
 scalar_t__ wait_probe_time (TYPE_5__*) ;

__attribute__((used)) static int
set_next_probe(struct module_env* env, struct trust_anchor* tp,
 struct ub_packed_rrset_key* dnskey_rrset)
{
 struct trust_anchor key, *tp2;
 time_t mold, mnew;

 key.node.key = &key;
 key.name = dnskey_rrset->rk.dname;
 key.namelen = dnskey_rrset->rk.dname_len;
 key.namelabs = dname_count_labels(key.name);
 key.dclass = tp->dclass;
 lock_basic_unlock(&tp->lock);


 lock_basic_lock(&env->anchors->lock);
 tp2 = (struct trust_anchor*)rbtree_search(env->anchors->tree, &key);
 if(!tp2) {
  verbose(VERB_ALGO, "trustpoint was deleted in set_next_probe");
  lock_basic_unlock(&env->anchors->lock);
  return 0;
 }
 log_assert(tp == tp2);
 lock_basic_lock(&tp->lock);


 mold = wait_probe_time(env->anchors);
 (void)rbtree_delete(&env->anchors->autr->probe, tp);
 tp->autr->next_probe_time = calc_next_probe(env,
  tp->autr->query_interval);
 (void)rbtree_insert(&env->anchors->autr->probe, &tp->autr->pnode);
 mnew = wait_probe_time(env->anchors);

 lock_basic_unlock(&env->anchors->lock);
 verbose(VERB_ALGO, "next probe set in %d seconds",
  (int)tp->autr->next_probe_time - (int)*env->now);
 if(mold != mnew) {
  reset_worker_timer(env);
 }
 return 1;
}
