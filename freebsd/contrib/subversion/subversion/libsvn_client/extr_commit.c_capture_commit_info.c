
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_commit_info_t ;
struct capture_baton_t {int original_baton; int (* original_callback ) (int const*,int ,int *) ;int pool; int * info; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int const*,int ,int *) ;
 int svn_commit_info_dup (int const*,int ) ;

__attribute__((used)) static svn_error_t *
capture_commit_info(const svn_commit_info_t *commit_info,
                    void *baton,
                    apr_pool_t *pool)
{
  struct capture_baton_t *cb = baton;

  *(cb->info) = svn_commit_info_dup(commit_info, cb->pool);

  if (cb->original_callback)
    SVN_ERR((cb->original_callback)(commit_info, cb->original_baton, pool));

  return SVN_NO_ERROR;
}
