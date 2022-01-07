
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int dsl_pool_t ;


 int dsl_pool_config_enter (int *,void*) ;
 int * spa_get_dsl (int *) ;
 int spa_open (char const*,int **,void*) ;

int
dsl_pool_hold(const char *name, void *tag, dsl_pool_t **dp)
{
 spa_t *spa;
 int error;

 error = spa_open(name, &spa, tag);
 if (error == 0) {
  *dp = spa_get_dsl(spa);
  dsl_pool_config_enter(*dp, tag);
 }
 return (error);
}
