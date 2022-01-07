
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
struct set_changelist_baton_t {scalar_t__ new_changelist; int changelist_filter; int depth; } ;
typedef int apr_pool_t ;


 int STMT_CREATE_CHANGELIST_LIST ;
 int STMT_CREATE_CHANGELIST_TRIGGER ;
 int STMT_DELETE_ACTUAL_EMPTIES ;
 int STMT_INSERT_ACTUAL_EMPTIES_FILES ;
 int STMT_MARK_SKIPPED_CHANGELIST_DIRS ;
 int STMT_UPDATE_ACTUAL_CHANGELISTS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int populate_targets_tree (TYPE_1__*,char const*,int ,int ,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,...) ;
 int svn_sqlite__exec_statements (int ,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__step_done (int *) ;

__attribute__((used)) static svn_error_t *
set_changelist_txn(void *baton,
                   svn_wc__db_wcroot_t *wcroot,
                   const char *local_relpath,
                   apr_pool_t *scratch_pool)
{
  struct set_changelist_baton_t *scb = baton;
  svn_sqlite__stmt_t *stmt;

  SVN_ERR(populate_targets_tree(wcroot, local_relpath, scb->depth,
                                scb->changelist_filter, scratch_pool));


  if (scb->new_changelist)
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_INSERT_ACTUAL_EMPTIES_FILES));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }


  SVN_ERR(svn_sqlite__exec_statements(wcroot->sdb,
                                      STMT_CREATE_CHANGELIST_LIST));
  SVN_ERR(svn_sqlite__exec_statements(wcroot->sdb,
                                      STMT_CREATE_CHANGELIST_TRIGGER));


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_UPDATE_ACTUAL_CHANGELISTS));
  SVN_ERR(svn_sqlite__bindf(stmt, "iss", wcroot->wc_id, local_relpath,
                            scb->new_changelist));
  SVN_ERR(svn_sqlite__step_done(stmt));

  if (scb->new_changelist)
    {

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_MARK_SKIPPED_CHANGELIST_DIRS));
      SVN_ERR(svn_sqlite__bindf(stmt, "iss", wcroot->wc_id, local_relpath,
                                scb->new_changelist));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }



  if (!scb->new_changelist)
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_EMPTIES));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }

  return SVN_NO_ERROR;
}
