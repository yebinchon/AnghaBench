
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int serf_bucket_t ;
struct TYPE_2__ {int relpath; int commit_ctx; } ;
typedef TYPE_1__ dir_context_t ;
typedef int apr_pool_t ;


 int setup_if_header_recursive (int *,int *,int ,int ,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
setup_add_dir_common_headers(serf_bucket_t *headers,
                             void *baton,
                             apr_pool_t *pool ,
                             apr_pool_t *scratch_pool)
{
  dir_context_t *dir = baton;
  svn_boolean_t added;

  return svn_error_trace(
      setup_if_header_recursive(&added, headers, dir->commit_ctx, dir->relpath,
                                pool));
}
