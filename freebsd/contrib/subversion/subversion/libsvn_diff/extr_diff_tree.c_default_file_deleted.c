
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int (* file_closed ) (char const*,int const*,int *,void*,TYPE_1__ const*,int *) ;} ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (char const*,int const*,int *,void*,TYPE_1__ const*,int *) ;

__attribute__((used)) static svn_error_t *
default_file_deleted(const char *relpath,
                     const svn_diff_source_t *left_source,
                     const char *left_file,
                               apr_hash_t *left_props,
                     void *file_baton,
                     const svn_diff_tree_processor_t *processor,
                     apr_pool_t *scratch_pool)
{
  SVN_ERR(processor->file_closed(relpath,
                                 left_source, ((void*)0),
                                 file_baton, processor, scratch_pool));
  return SVN_NO_ERROR;
}
