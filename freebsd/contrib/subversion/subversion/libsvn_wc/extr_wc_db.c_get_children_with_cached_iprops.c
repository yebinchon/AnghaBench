
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int abspath; int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int STMT_SELECT_IPROPS_CHILDREN ;
 int STMT_SELECT_IPROPS_NODE ;
 int STMT_SELECT_IPROPS_RECURSIVE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 char* svn_dirent_is_child (char const*,char const*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_hash_sets (int *,char const*,char*) ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_wc__db_base_get_info_internal (int *,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_children_with_cached_iprops(apr_hash_t **iprop_paths,
                                svn_wc__db_wcroot_t *wcroot,
                                const char *local_relpath,
                                svn_depth_t depth,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  *iprop_paths = apr_hash_make(result_pool);


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_IPROPS_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (have_row)
   {
      const char *relpath_with_cache = svn_sqlite__column_text(stmt, 0,
                                                               ((void*)0));
      const char *abspath_with_cache = svn_dirent_join(wcroot->abspath,
                                                       relpath_with_cache,
                                                       result_pool);
      svn_hash_sets(*iprop_paths, abspath_with_cache,
                    svn_sqlite__column_text(stmt, 1, result_pool));
    }
  SVN_ERR(svn_sqlite__reset(stmt));

  if (depth == svn_depth_empty)
    return SVN_NO_ERROR;


  if (depth == svn_depth_files
      || depth == svn_depth_immediates)
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_SELECT_IPROPS_CHILDREN));
    }
  else
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_SELECT_IPROPS_RECURSIVE));
    }

  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  while (have_row)
    {
      const char *relpath_with_cache = svn_sqlite__column_text(stmt, 0,
                                                               ((void*)0));
      const char *abspath_with_cache = svn_dirent_join(wcroot->abspath,
                                                       relpath_with_cache,
                                                       result_pool);
      svn_hash_sets(*iprop_paths, abspath_with_cache,
                    svn_sqlite__column_text(stmt, 1, result_pool));
      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }

  SVN_ERR(svn_sqlite__reset(stmt));


  if (depth == svn_depth_files)
    {
      apr_hash_index_t *hi;
      apr_pool_t *iterpool = svn_pool_create(scratch_pool);

      for (hi = apr_hash_first(scratch_pool, *iprop_paths);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *child_abspath = apr_hash_this_key(hi);
          const char *child_relpath;
          svn_node_kind_t child_kind;

          svn_pool_clear(iterpool);

          child_relpath = svn_dirent_is_child(local_relpath, child_abspath,
                                              ((void*)0));

          if (! child_relpath)
            {
              continue;
            }

          SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), &child_kind, ((void*)0),
                                                    ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                    ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                    ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                    wcroot, child_relpath,
                                                    scratch_pool,
                                                    scratch_pool));


          if (child_kind != svn_node_file)
            {
              svn_hash_sets(*iprop_paths, child_abspath, ((void*)0));
            }
        }

      svn_pool_destroy(iterpool);
    }

  return SVN_NO_ERROR;
}
