
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {struct copy_as_changed_baton_t* baton; } ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
typedef int svn_boolean_t ;
struct copy_as_changed_baton_t {TYPE_2__* processor; } ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* file_opened ) (void**,int *,char const*,int const*,int const*,int const*,void*,TYPE_2__*,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int assert (int ) ;
 int stub1 (void**,int *,char const*,int const*,int const*,int const*,void*,TYPE_2__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
copy_as_changed_file_opened(void **new_file_baton,
                            svn_boolean_t *skip,
                            const char *relpath,
                            const svn_diff_source_t *left_source,
                            const svn_diff_source_t *right_source,
                            const svn_diff_source_t *copyfrom_source,
                            void *dir_baton,
                            const svn_diff_tree_processor_t *processor,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  struct copy_as_changed_baton_t *cb = processor->baton;

  if (!left_source && copyfrom_source)
    {
      assert(right_source != ((void*)0));

      left_source = copyfrom_source;
      copyfrom_source = ((void*)0);
    }

  SVN_ERR(cb->processor->file_opened(new_file_baton,
                                     skip,
                                     relpath,
                                     left_source,
                                     right_source,
                                     copyfrom_source,
                                     dir_baton,
                                     cb->processor,
                                     result_pool,
                                     scratch_pool));
  return SVN_NO_ERROR;
}
