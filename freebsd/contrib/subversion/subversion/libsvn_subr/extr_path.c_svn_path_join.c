
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* svn_path_join_internal (char const*,char const*,int *) ;

char *svn_path_join(const char *base,
                    const char *component,
                    apr_pool_t *pool)
{
  return svn_path_join_internal(base, component, pool);
}
