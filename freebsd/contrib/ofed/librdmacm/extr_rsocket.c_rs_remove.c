
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int index; } ;


 int idm ;
 int idm_clear (int *,int ) ;
 int mut ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void rs_remove(struct rsocket *rs)
{
 pthread_mutex_lock(&mut);
 idm_clear(&idm, rs->index);
 pthread_mutex_unlock(&mut);
}
