
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* revision; void* old_revision; void* prop_state; void* content_state; int kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
typedef void* svn_wc_notify_action_t ;
struct TYPE_8__ {int sdb; int abspath; } ;
typedef TYPE_3__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef void* svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_FINALIZE_UPDATE_MOVE ;
 int STMT_SELECT_UPDATE_MOVE_LIST ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int kind_map_none ;
 int svn_dirent_join (int ,char const*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 void* svn_sqlite__column_int (int *,int) ;
 char* svn_sqlite__column_text (int *,int ,int *) ;
 int svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_sqlite__step_done (int *) ;
 TYPE_1__* svn_wc_create_notify (int ,void*,int *) ;

svn_error_t *
svn_wc__db_update_move_list_notify(svn_wc__db_wcroot_t *wcroot,
                                   svn_revnum_t old_revision,
                                   svn_revnum_t new_revision,
                                   svn_wc_notify_func2_t notify_func,
                                   void *notify_baton,
                                   apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;

  if (notify_func)
    {
      apr_pool_t *iterpool;
      svn_boolean_t have_row;

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_SELECT_UPDATE_MOVE_LIST));
      SVN_ERR(svn_sqlite__step(&have_row, stmt));

      iterpool = svn_pool_create(scratch_pool);
      while (have_row)
        {
          const char *local_relpath;
          svn_wc_notify_action_t action;
          svn_wc_notify_t *notify;

          svn_pool_clear(iterpool);

          local_relpath = svn_sqlite__column_text(stmt, 0, ((void*)0));
          action = svn_sqlite__column_int(stmt, 1);
          notify = svn_wc_create_notify(svn_dirent_join(wcroot->abspath,
                                                        local_relpath,
                                                        iterpool),
                                        action, iterpool);
          notify->kind = svn_sqlite__column_token(stmt, 2, kind_map_none);
          notify->content_state = svn_sqlite__column_int(stmt, 3);
          notify->prop_state = svn_sqlite__column_int(stmt, 4);
          notify->old_revision = old_revision;
          notify->revision = new_revision;
          notify_func(notify_baton, notify, scratch_pool);

          SVN_ERR(svn_sqlite__step(&have_row, stmt));
        }
      svn_pool_destroy(iterpool);
      SVN_ERR(svn_sqlite__reset(stmt));
    }

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_FINALIZE_UPDATE_MOVE));
  SVN_ERR(svn_sqlite__step_done(stmt));

  return SVN_NO_ERROR;
}
