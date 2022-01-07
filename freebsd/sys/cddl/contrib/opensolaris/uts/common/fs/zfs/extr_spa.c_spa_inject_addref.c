
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spa_inject_ref; } ;
typedef TYPE_1__ spa_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_1__* spa_lookup (char*) ;
 int spa_namespace_lock ;

spa_t *
spa_inject_addref(char *name)
{
 spa_t *spa;

 mutex_enter(&spa_namespace_lock);
 if ((spa = spa_lookup(name)) == ((void*)0)) {
  mutex_exit(&spa_namespace_lock);
  return (((void*)0));
 }
 spa->spa_inject_ref++;
 mutex_exit(&spa_namespace_lock);

 return (spa);
}
