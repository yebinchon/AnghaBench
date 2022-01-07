
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* changelist_name; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
typedef int svn_wc_notify_action_t ;
struct TYPE_8__ {int abspath; int sdb; } ;
typedef TYPE_3__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int * (* svn_cancel_func_t ) (void*) ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_SELECT_CHANGELIST_LIST ;
 int SVN_ERR (int ) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_sqlite__column_int (int *,int) ;
 void* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
do_changelist_notify(void *baton,
                     svn_wc__db_wcroot_t *wcroot,
                     svn_cancel_func_t cancel_func,
                     void *cancel_baton,
                     svn_wc_notify_func2_t notify_func,
                     void *notify_baton,
                     apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_pool_t *iterpool;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_CHANGELIST_LIST));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  iterpool = svn_pool_create(scratch_pool);
  while (have_row)
    {

      const char *notify_relpath = svn_sqlite__column_text(stmt, 1, ((void*)0));
      svn_wc_notify_action_t action = svn_sqlite__column_int(stmt, 2);
      svn_wc_notify_t *notify;
      const char *notify_abspath;

      svn_pool_clear(iterpool);

      if (cancel_func)
        {
          svn_error_t *err = cancel_func(cancel_baton);

          if (err)
            return svn_error_trace(svn_error_compose_create(
                                                    err,
                                                    svn_sqlite__reset(stmt)));
        }

      notify_abspath = svn_dirent_join(wcroot->abspath, notify_relpath,
                                       iterpool);
      notify = svn_wc_create_notify(notify_abspath, action, iterpool);
      notify->changelist_name = svn_sqlite__column_text(stmt, 3, ((void*)0));
      notify_func(notify_baton, notify, iterpool);

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  svn_pool_destroy(iterpool);

  return svn_error_trace(svn_sqlite__reset(stmt));
}
