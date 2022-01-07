
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int* now; TYPE_2__* key_cache; int * msg_cache; TYPE_1__* rrset_cache; } ;
struct worker {TYPE_3__ env; } ;
struct del_info {size_t len; int labs; int expired; scalar_t__ num_keys; scalar_t__ num_msgs; scalar_t__ num_rrsets; int * name; struct worker* worker; } ;
struct TYPE_5__ {int * slab; } ;
struct TYPE_4__ {int table; } ;
typedef int RES ;


 int free (int *) ;
 int parse_arg_name (int *,char*,int **,size_t*,int*) ;
 int slabhash_traverse (int *,int,int *,struct del_info*) ;
 int ssl_printf (int *,char*,unsigned long,unsigned long,unsigned long) ;
 int zone_del_kcache ;
 int zone_del_msg ;
 int zone_del_rrset ;

__attribute__((used)) static void
do_flush_zone(RES* ssl, struct worker* worker, char* arg)
{
 uint8_t* nm;
 int nmlabs;
 size_t nmlen;
 struct del_info inf;
 if(!parse_arg_name(ssl, arg, &nm, &nmlen, &nmlabs))
  return;


 inf.worker = worker;
 inf.name = nm;
 inf.len = nmlen;
 inf.labs = nmlabs;
 inf.expired = *worker->env.now;
 inf.expired -= 3;
 inf.num_rrsets = 0;
 inf.num_msgs = 0;
 inf.num_keys = 0;
 slabhash_traverse(&worker->env.rrset_cache->table, 1,
  &zone_del_rrset, &inf);

 slabhash_traverse(worker->env.msg_cache, 1, &zone_del_msg, &inf);


 if(worker->env.key_cache) {
  slabhash_traverse(worker->env.key_cache->slab, 1,
   &zone_del_kcache, &inf);
 }

 free(nm);

 (void)ssl_printf(ssl, "ok removed %lu rrsets, %lu messages "
  "and %lu key entries\n", (unsigned long)inf.num_rrsets,
  (unsigned long)inf.num_msgs, (unsigned long)inf.num_keys);
}
