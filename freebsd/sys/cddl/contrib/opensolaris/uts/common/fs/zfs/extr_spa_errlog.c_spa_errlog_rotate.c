
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_errlist_lock; int spa_scrub_finished; } ;
typedef TYPE_1__ spa_t ;


 int B_TRUE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
spa_errlog_rotate(spa_t *spa)
{
 mutex_enter(&spa->spa_errlist_lock);
 spa->spa_scrub_finished = B_TRUE;
 mutex_exit(&spa->spa_errlist_lock);
}
