
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_aux_exists (int ,int *,int*,int *) ;
 int spa_spare_avl ;
 int spa_spare_lock ;

boolean_t
spa_spare_exists(uint64_t guid, uint64_t *pool, int *refcnt)
{
 boolean_t found;

 mutex_enter(&spa_spare_lock);
 found = spa_aux_exists(guid, pool, refcnt, &spa_spare_avl);
 mutex_exit(&spa_spare_lock);

 return (found);
}
