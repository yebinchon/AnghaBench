
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_kmem_rcu {int rcu_head; } ;
struct linux_kmem_cache {int dummy; } ;


 struct linux_kmem_rcu* LINUX_KMEM_TO_RCU (struct linux_kmem_cache*,void*) ;
 int call_rcu (int *,int ) ;
 int linux_kmem_cache_free_rcu_callback ;

void
linux_kmem_cache_free_rcu(struct linux_kmem_cache *c, void *m)
{
 struct linux_kmem_rcu *rcu = LINUX_KMEM_TO_RCU(c, m);

 call_rcu(&rcu->rcu_head, linux_kmem_cache_free_rcu_callback);
}
