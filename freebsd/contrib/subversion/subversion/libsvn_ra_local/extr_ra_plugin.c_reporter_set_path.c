
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
struct TYPE_2__ {int report_baton; } ;
typedef TYPE_1__ reporter_baton_t ;
typedef int apr_pool_t ;


 int * svn_repos_set_path3 (int ,char const*,int ,int ,int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
reporter_set_path(void *reporter_baton,
                  const char *path,
                  svn_revnum_t revision,
                  svn_depth_t depth,
                  svn_boolean_t start_empty,
                  const char *lock_token,
                  apr_pool_t *pool)
{
  reporter_baton_t *rbaton = reporter_baton;
  return svn_repos_set_path3(rbaton->report_baton, path,
                             revision, depth, start_empty, lock_token, pool);
}
