
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_6__ {int len; int data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_INSERT_ACTUAL_CONFLICT ;
 int STMT_SELECT_ACTUAL_NODE ;
 int STMT_UPDATE_ACTUAL_CONFLICT ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int svn_relpath_dirname (char const*,int *) ;
 TYPE_2__* svn_skel__unparse (int const*,int *) ;
 int svn_sqlite__bind_blob (int *,int,int ,int ) ;
 int svn_sqlite__bind_text (int *,int,int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_sqlite__update (int *,int *) ;
 int svn_wc__conflict_skel_is_complete (scalar_t__*,int const*) ;

svn_error_t *
svn_wc__db_mark_conflict_internal(svn_wc__db_wcroot_t *wcroot,
                                  const char *local_relpath,
                                  const svn_skel_t *conflict_skel,
                                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t got_row;
  svn_boolean_t is_complete;

  SVN_ERR(svn_wc__conflict_skel_is_complete(&is_complete, conflict_skel));
  SVN_ERR_ASSERT(is_complete);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&got_row, stmt));
  SVN_ERR(svn_sqlite__reset(stmt));

  if (got_row)
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_UPDATE_ACTUAL_CONFLICT));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
    }
  else
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_INSERT_ACTUAL_CONFLICT));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      if (*local_relpath != '\0')
        SVN_ERR(svn_sqlite__bind_text(stmt, 4,
                                      svn_relpath_dirname(local_relpath,
                                                          scratch_pool)));
    }

  {
    svn_stringbuf_t *sb = svn_skel__unparse(conflict_skel, scratch_pool);

    SVN_ERR(svn_sqlite__bind_blob(stmt, 3, sb->data, sb->len));
  }

  SVN_ERR(svn_sqlite__update(((void*)0), stmt));

  return SVN_NO_ERROR;
}
