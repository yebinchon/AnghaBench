
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_freeze_func_t ;
typedef int svn_error_t ;
struct freeze_baton_t {int scratch_pool; void* freeze_baton; int freeze_func; scalar_t__ counter; int * paths; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int multi_freeze (struct freeze_baton_t*,int *) ;
 int svn_pool_create (int *) ;
 int svn_pool_destroy (int ) ;

svn_error_t *
svn_repos_freeze(apr_array_header_t *paths,
                 svn_repos_freeze_func_t freeze_func,
                 void *freeze_baton,
                 apr_pool_t *pool)
{
  struct freeze_baton_t fb;

  fb.paths = paths;
  fb.counter = 0;
  fb.freeze_func = freeze_func;
  fb.freeze_baton = freeze_baton;
  fb.scratch_pool = svn_pool_create(pool);

  SVN_ERR(multi_freeze(&fb, pool));

  svn_pool_destroy(fb.scratch_pool);
  return SVN_NO_ERROR;
}
