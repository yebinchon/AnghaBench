
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int index; } ;


 int idm ;
 int idm_set (int *,int,struct rsocket*) ;
 int mut ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int rs_insert(struct rsocket *rs, int index)
{
 pthread_mutex_lock(&mut);
 rs->index = idm_set(&idm, index, rs);
 pthread_mutex_unlock(&mut);
 return rs->index;
}
