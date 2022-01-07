
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; } ;
typedef TYPE_1__ svn_lock_t ;
typedef int svn_error_t ;
struct TYPE_7__ {scalar_t__ requested_depth; int get_locks_baton; int (* get_locks_func ) (int ,TYPE_1__*,int *) ;int path; } ;
typedef TYPE_2__ get_locks_filter_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ strcmp (int ,int ) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int stub2 (int ,TYPE_1__*,int *) ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 scalar_t__ svn_depth_infinity ;
 char* svn_fspath__skip_ancestor (int ,int ) ;
 int svn_path_component_count (char const*) ;

__attribute__((used)) static svn_error_t *
get_locks_filter_func(void *baton,
                      svn_lock_t *lock,
                      apr_pool_t *pool)
{
  get_locks_filter_baton_t *b = baton;
  if ((strcmp(b->path, lock->path) == 0)
      || (b->requested_depth == svn_depth_infinity))
    {
      SVN_ERR(b->get_locks_func(b->get_locks_baton, lock, pool));
    }
  else if ((b->requested_depth == svn_depth_files) ||
           (b->requested_depth == svn_depth_immediates))
    {
      const char *rel_uri = svn_fspath__skip_ancestor(b->path, lock->path);
      if (rel_uri && (svn_path_component_count(rel_uri) == 1))
        SVN_ERR(b->get_locks_func(b->get_locks_baton, lock, pool));
    }

  return SVN_NO_ERROR;
}
