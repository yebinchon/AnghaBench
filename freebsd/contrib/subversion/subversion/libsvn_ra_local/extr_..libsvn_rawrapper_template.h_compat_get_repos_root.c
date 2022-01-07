
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* get_repos_root ) (void*,char const**,int *) ;} ;


 TYPE_1__ VTBL ;
 int * stub1 (void*,char const**,int *) ;

__attribute__((used)) static svn_error_t *compat_get_repos_root(void *session_baton,
                                          const char **url,
                                          apr_pool_t *pool)
{
  return VTBL.get_repos_root(session_baton, url, pool);
}
