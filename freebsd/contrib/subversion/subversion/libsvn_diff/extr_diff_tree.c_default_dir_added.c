
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int (* dir_closed ) (char const*,int *,int const*,void*,TYPE_1__ const*,int *) ;} ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (char const*,int *,int const*,void*,TYPE_1__ const*,int *) ;

__attribute__((used)) static svn_error_t *
default_dir_added(const char *relpath,
                  const svn_diff_source_t *copyfrom_source,
                  const svn_diff_source_t *right_source,
                            apr_hash_t *copyfrom_props,
                            apr_hash_t *right_props,
                  void *dir_baton,
                  const svn_diff_tree_processor_t *processor,
                  apr_pool_t *scratch_pool)
{
  SVN_ERR(processor->dir_closed(relpath, ((void*)0), right_source,
                                dir_baton, processor,
                                scratch_pool));

  return SVN_NO_ERROR;
}
