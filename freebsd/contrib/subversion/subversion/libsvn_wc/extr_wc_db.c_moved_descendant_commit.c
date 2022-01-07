
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int STMT_COMMIT_UPDATE_ORIGIN ;
 int SVN_ERR (int *) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 char* apr_hash_this_val (int *) ;
 int * moved_descendant_collect (int **,TYPE_1__*,char const*,int,int *,int *) ;
 int relpath_depth (char const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_relpath_join (char const*,int ,int *) ;
 int svn_relpath_skip_ancestor (char const*,char const*) ;
 int * svn_sqlite__bindf (int *,char*,int ,char const*,int,int ,char const*,int ) ;
 int * svn_sqlite__get_statement (int **,int ,int ) ;
 int * svn_sqlite__update (int*,int *) ;

__attribute__((used)) static svn_error_t *
moved_descendant_commit(svn_wc__db_wcroot_t *wcroot,
                        const char *local_relpath,
                        apr_int64_t repos_id,
                        const char *repos_relpath,
                        svn_revnum_t revision,
                        apr_hash_t *children,
                        apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool;
  svn_sqlite__stmt_t *stmt;
  apr_hash_index_t *hi;

  SVN_ERR_ASSERT(*local_relpath != '\0'
                 && *repos_relpath != '\0');

  if (!children)
    return SVN_NO_ERROR;


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_COMMIT_UPDATE_ORIGIN));

  iterpool = svn_pool_create(scratch_pool);
  for (hi = apr_hash_first(scratch_pool, children); hi; hi = apr_hash_next(hi))
    {
      const char *src_relpath = apr_hash_this_val(hi);
      const char *to_relpath = apr_hash_this_key(hi);
      const char *new_repos_relpath;
      int to_op_depth = relpath_depth(to_relpath);
      int affected;
      apr_hash_t *map;

      svn_pool_clear(iterpool);

      SVN_ERR_ASSERT(to_op_depth > 0);

      new_repos_relpath = svn_relpath_join(
                            repos_relpath,
                            svn_relpath_skip_ancestor(local_relpath,
                                                      src_relpath),
                            iterpool);

      SVN_ERR(svn_sqlite__bindf(stmt, "isdisr", wcroot->wc_id,
                                                to_relpath,
                                                to_op_depth,
                                                repos_id,
                                                new_repos_relpath,
                                                revision));
      SVN_ERR(svn_sqlite__update(&affected, stmt));
      SVN_ERR(moved_descendant_collect(&map, wcroot, to_relpath, to_op_depth,
                                       iterpool, iterpool));
      SVN_ERR(moved_descendant_commit(wcroot, to_relpath,
                                      repos_id, new_repos_relpath, revision,
                                      map, iterpool));
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
