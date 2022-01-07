
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int nvlist_t ;


 int spa_open_common (char const*,int **,void*,int *,int **) ;

int
spa_open_rewind(const char *name, spa_t **spapp, void *tag, nvlist_t *policy,
    nvlist_t **config)
{
 return (spa_open_common(name, spapp, tag, policy, config));
}
