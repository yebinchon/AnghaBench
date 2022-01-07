
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {struct filter_tree_baton_t* baton; } ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
struct filter_tree_baton_t {TYPE_2__* processor; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int (* file_added ) (char const*,int const*,int const*,char const*,char const*,int *,int *,void*,TYPE_2__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (char const*,int const*,int const*,char const*,char const*,int *,int *,void*,TYPE_2__*,int *) ;

__attribute__((used)) static svn_error_t *
filter_file_added(const char *relpath,
                  const svn_diff_source_t *copyfrom_source,
                  const svn_diff_source_t *right_source,
                  const char *copyfrom_file,
                  const char *right_file,
                            apr_hash_t *copyfrom_props,
                            apr_hash_t *right_props,
                  void *file_baton,
                  const svn_diff_tree_processor_t *processor,
                  apr_pool_t *scratch_pool)
{
  struct filter_tree_baton_t *fb = processor->baton;

  SVN_ERR(fb->processor->file_added(relpath,
                                    copyfrom_source,
                                    right_source,
                                    copyfrom_file,
                                    right_file,
                                    copyfrom_props,
                                    right_props,
                                    file_baton,
                                    fb->processor,
                                    scratch_pool));
  return SVN_NO_ERROR;
}
