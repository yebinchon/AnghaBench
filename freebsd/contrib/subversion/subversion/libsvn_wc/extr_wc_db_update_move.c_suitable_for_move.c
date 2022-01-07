
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_SELECT_BASE_NODE ;
 int STMT_SELECT_REPOS_PATH_REVISION ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * svn_error_createf (int ,int ,int ,int ) ;
 int * svn_error_trace (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 char* svn_relpath_skip_ancestor (char const*,char const*) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 scalar_t__ svn_sqlite__column_revnum (int *,int) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
suitable_for_move(svn_wc__db_wcroot_t *wcroot,
                  const char *local_relpath,
                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_revnum_t revision;
  const char *repos_relpath;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_BASE_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (!have_row)
    return svn_error_trace(svn_sqlite__reset(stmt));

  revision = svn_sqlite__column_revnum(stmt, 4);
  repos_relpath = svn_sqlite__column_text(stmt, 1, scratch_pool);

  SVN_ERR(svn_sqlite__reset(stmt));

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_REPOS_PATH_REVISION));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  while (have_row)
    {
      svn_revnum_t node_revision = svn_sqlite__column_revnum(stmt, 2);
      const char *child_relpath = svn_sqlite__column_text(stmt, 0, ((void*)0));
      const char *relpath;

      svn_pool_clear(iterpool);

      relpath = svn_relpath_skip_ancestor(local_relpath, child_relpath);
      relpath = svn_relpath_join(repos_relpath, relpath, iterpool);

      if (strcmp(relpath, svn_sqlite__column_text(stmt, 1, ((void*)0))))
        return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE,
                                 svn_sqlite__reset(stmt),
                                 _("Cannot apply update because '%s' is a "
                                   "switched path (please switch it back to "
                                   "its original URL and try again)"),
                                 path_for_error_message(wcroot, child_relpath,
                                                        scratch_pool));

      if (revision != node_revision)
        return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE,
                                 svn_sqlite__reset(stmt),
                                 _("Cannot apply update because '%s' is a "
                                   "mixed-revision working copy (please "
                                   "update and try again)"),
                                 path_for_error_message(wcroot, local_relpath,
                                                        scratch_pool));

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  SVN_ERR(svn_sqlite__reset(stmt));

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
