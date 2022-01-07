
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {struct reverse_tree_baton_t* baton; } ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
struct reverse_tree_baton_t {TYPE_2__* processor; scalar_t__ prefix_relpath; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int (* file_added ) (char const*,int *,int const*,int *,char const*,int *,int *,void*,TYPE_2__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (char const*,int *,int const*,int *,char const*,int *,int *,void*,TYPE_2__*,int *) ;
 char* svn_relpath_join (scalar_t__,char const*,int *) ;

__attribute__((used)) static svn_error_t *
reverse_file_deleted(const char *relpath,
                     const svn_diff_source_t *left_source,
                     const char *left_file,
                               apr_hash_t *left_props,
                     void *file_baton,
                     const svn_diff_tree_processor_t *processor,
                     apr_pool_t *scratch_pool)
{
  struct reverse_tree_baton_t *rb = processor->baton;

  if (rb->prefix_relpath)
    relpath = svn_relpath_join(rb->prefix_relpath, relpath, scratch_pool);

  SVN_ERR(rb->processor->file_added(relpath,
                                    ((void*)0) ,
                                    left_source,
                                    ((void*)0) ,
                                    left_file,
                                    ((void*)0) ,
                                    left_props,
                                    file_baton,
                                    rb->processor,
                                    scratch_pool));
  return SVN_NO_ERROR;
}
