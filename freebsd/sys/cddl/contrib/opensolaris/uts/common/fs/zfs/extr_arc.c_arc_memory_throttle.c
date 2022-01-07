
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int spa_lowmem_last_txg; int spa_lowmem_page_load; } ;
typedef TYPE_1__ spa_t ;


 int ARCSTAT_INCR (int ,int) ;
 int EAGAIN ;
 int ERESTART ;
 int MAX (int,int) ;
 int MIN (int,int ) ;
 int SET_ERROR (int ) ;
 int arc_lotsfree_percent ;
 scalar_t__ arc_reclaim_needed () ;
 int arcstat_memory_throttle_count ;
 int atomic_add_64 (int*,int) ;
 scalar_t__ curproc ;
 int freemem ;
 int minfree ;
 scalar_t__ pageproc ;
 scalar_t__ physmem ;
 int ptob (int) ;
 int uma_avail () ;

__attribute__((used)) static int
arc_memory_throttle(spa_t *spa, uint64_t reserve, uint64_t txg)
{
 return (0);
}
