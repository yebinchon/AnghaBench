
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {struct copy_as_changed_baton_t* baton; } ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
typedef int svn_boolean_t ;
struct copy_as_changed_baton_t {TYPE_2__* processor; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_6__ {int (* file_added ) (char const*,int const*,int const*,char const*,char const*,int *,int *,void*,TYPE_2__*,int *) ;int (* file_changed ) (char const*,int const*,int const*,char const*,char const*,int *,int *,int,int *,void*,TYPE_2__*,int *) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (char const*,int const*,int const*,char const*,char const*,int *,int *,int,int *,void*,TYPE_2__*,int *) ;
 int stub2 (char const*,int const*,int const*,char const*,char const*,int *,int *,void*,TYPE_2__*,int *) ;
 int svn_io_files_contents_same_p (int *,char const*,char const*,int *) ;
 int svn_prop_diffs (int **,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
copy_as_changed_file_added(const char *relpath,
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
  struct copy_as_changed_baton_t *cb = processor->baton;

  if (copyfrom_source)
    {
      apr_array_header_t *propchanges;
      svn_boolean_t same;
      SVN_ERR(svn_prop_diffs(&propchanges, right_props, copyfrom_props,
                             scratch_pool));



      if (*copyfrom_file && *right_file)
        {
          SVN_ERR(svn_io_files_contents_same_p(&same, copyfrom_file,
                                               right_file, scratch_pool));
        }
      else
        same = FALSE;

      SVN_ERR(cb->processor->file_changed(relpath,
                                          copyfrom_source,
                                          right_source,
                                          copyfrom_file,
                                          right_file,
                                          copyfrom_props,
                                          right_props,
                                          !same,
                                          propchanges,
                                          file_baton,
                                          cb->processor,
                                          scratch_pool));
    }
  else
    {
      SVN_ERR(cb->processor->file_added(relpath,
                                        copyfrom_source,
                                        right_source,
                                        copyfrom_file,
                                        right_file,
                                        copyfrom_props,
                                        right_props,
                                        file_baton,
                                        cb->processor,
                                        scratch_pool));
    }
  return SVN_NO_ERROR;
}
