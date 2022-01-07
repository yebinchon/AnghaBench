
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int FTAG ;
 int dmu_objset_find_impl (int *,char*,int (*) (char const*,void*),void*,int) ;
 int spa_close (int *,int ) ;
 int spa_open (char*,int **,int ) ;

int
dmu_objset_find(char *name, int func(const char *, void *), void *arg,
    int flags)
{
 spa_t *spa;
 int error;

 error = spa_open(name, &spa, FTAG);
 if (error != 0)
  return (error);
 error = dmu_objset_find_impl(spa, name, func, arg, flags);
 spa_close(spa, FTAG);
 return (error);
}
