
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int init_lock; } ;
typedef TYPE_1__ rtree_t ;


 int WITNESS_RANK_RTREE ;
 int assert (int) ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;
 int memset (TYPE_1__*,int ,int) ;

bool
rtree_new(rtree_t *rtree, bool zeroed) {





 assert(zeroed);


 if (malloc_mutex_init(&rtree->init_lock, "rtree", WITNESS_RANK_RTREE,
     malloc_mutex_rank_exclusive)) {
  return 1;
 }

 return 0;
}
