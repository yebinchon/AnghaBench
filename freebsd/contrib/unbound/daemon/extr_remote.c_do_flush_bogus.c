
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int* now; TYPE_2__* key_cache; int * msg_cache; TYPE_1__* rrset_cache; } ;
struct worker {TYPE_3__ env; } ;
struct del_info {int expired; scalar_t__ num_keys; scalar_t__ num_msgs; scalar_t__ num_rrsets; struct worker* worker; } ;
struct TYPE_5__ {int * slab; } ;
struct TYPE_4__ {int table; } ;
typedef int RES ;


 int bogus_del_kcache ;
 int bogus_del_msg ;
 int bogus_del_rrset ;
 int slabhash_traverse (int *,int,int *,struct del_info*) ;
 int ssl_printf (int *,char*,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static void
do_flush_bogus(RES* ssl, struct worker* worker)
{
 struct del_info inf;

 inf.worker = worker;
 inf.expired = *worker->env.now;
 inf.expired -= 3;
 inf.num_rrsets = 0;
 inf.num_msgs = 0;
 inf.num_keys = 0;
 slabhash_traverse(&worker->env.rrset_cache->table, 1,
  &bogus_del_rrset, &inf);

 slabhash_traverse(worker->env.msg_cache, 1, &bogus_del_msg, &inf);


 if(worker->env.key_cache) {
  slabhash_traverse(worker->env.key_cache->slab, 1,
   &bogus_del_kcache, &inf);
 }

 (void)ssl_printf(ssl, "ok removed %lu rrsets, %lu messages "
  "and %lu key entries\n", (unsigned long)inf.num_rrsets,
  (unsigned long)inf.num_msgs, (unsigned long)inf.num_keys);
}
