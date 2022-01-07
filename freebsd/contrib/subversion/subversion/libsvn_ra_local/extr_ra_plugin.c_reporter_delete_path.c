
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int report_baton; } ;
typedef TYPE_1__ reporter_baton_t ;
typedef int apr_pool_t ;


 int * svn_repos_delete_path (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
reporter_delete_path(void *reporter_baton,
                     const char *path,
                     apr_pool_t *pool)
{
  reporter_baton_t *rbaton = reporter_baton;
  return svn_repos_delete_path(rbaton->report_baton, path, pool);
}
