
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct torus {scalar_t__ link_cnt; scalar_t__ link_pool_sz; struct link* link_pool; TYPE_1__* osm; } ;
struct link {int dummy; } ;
struct TYPE_2__ {int log; } ;


 int OSM_LOG (int *,int ,char*) ;
 int OSM_LOG_ERROR ;

__attribute__((used)) static
struct link *alloc_tlink(struct torus *t)
{
 if (t->link_cnt >= t->link_pool_sz) {
  OSM_LOG(&t->osm->log, OSM_LOG_ERROR,
   "ERR 4E16: unexpectedly out of pre-allocated link "
   "structures!\n");
  return ((void*)0);
 }
 return &t->link_pool[t->link_cnt++];
}
