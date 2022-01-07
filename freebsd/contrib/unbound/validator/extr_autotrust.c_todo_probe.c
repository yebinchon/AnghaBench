
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct trust_anchor {TYPE_2__* autr; int lock; } ;
struct module_env {scalar_t__* now; TYPE_3__* anchors; } ;
struct TYPE_10__ {scalar_t__ key; } ;
typedef TYPE_4__ rbnode_type ;
struct TYPE_9__ {int lock; TYPE_1__* autr; } ;
struct TYPE_8__ {int pnode; int retry_time; scalar_t__ next_probe_time; } ;
struct TYPE_7__ {int probe; } ;


 TYPE_4__* RBTREE_NULL ;
 scalar_t__ calc_next_probe (struct module_env*,int ) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int rbtree_delete (int *,struct trust_anchor*) ;
 TYPE_4__* rbtree_first (int *) ;
 int rbtree_insert (int *,int *) ;

__attribute__((used)) static struct trust_anchor*
todo_probe(struct module_env* env, time_t* next)
{
 struct trust_anchor* tp;
 rbnode_type* el;

 lock_basic_lock(&env->anchors->lock);
 if( (el=rbtree_first(&env->anchors->autr->probe)) == RBTREE_NULL) {

  lock_basic_unlock(&env->anchors->lock);

  *next = 0;
  return ((void*)0);
 }
 tp = (struct trust_anchor*)el->key;
 lock_basic_lock(&tp->lock);


 if((time_t)tp->autr->next_probe_time > *env->now) {

  *next = (time_t)tp->autr->next_probe_time - *env->now;
  lock_basic_unlock(&tp->lock);
  lock_basic_unlock(&env->anchors->lock);
  return ((void*)0);
 }


 (void)rbtree_delete(&env->anchors->autr->probe, tp);
 tp->autr->next_probe_time = calc_next_probe(env, tp->autr->retry_time);
 (void)rbtree_insert(&env->anchors->autr->probe, &tp->autr->pnode);
 lock_basic_unlock(&env->anchors->lock);

 return tp;
}
