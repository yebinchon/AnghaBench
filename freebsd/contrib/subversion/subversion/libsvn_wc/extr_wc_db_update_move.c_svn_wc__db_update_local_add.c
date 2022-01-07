
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int revision; void* prop_state; void* content_state; int kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
struct TYPE_13__ {int abspath; } ;
typedef TYPE_3__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,TYPE_3__*) ;
 int VERIFY_USABLE_WCROOT (TYPE_3__*) ;
 int svn_dirent_join (int ,char const*,int *) ;
 int svn_node_none ;
 int svn_wc__db_update_move_list_notify (TYPE_3__*,int ,int ,int (*) (void*,TYPE_1__*,int *),void*,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_3__**,char const**,int *,char const*,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (int ,int ,int *) ;
 void* svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_update_completed ;
 int update_local_add (int *,int *,TYPE_3__*,char const*,int ,void*,int *) ;

svn_error_t *
svn_wc__db_update_local_add(svn_wc__db_t *db,
                            const char *local_abspath,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            svn_wc_notify_func2_t notify_func,
                            void *notify_baton,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  svn_revnum_t new_rev;
  const char *local_relpath;

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath,
                                                db, local_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN(update_local_add(&new_rev, db, wcroot,
                                       local_relpath,
                                       cancel_func, cancel_baton,
                                       scratch_pool),
                      wcroot);


  SVN_ERR(svn_wc__db_update_move_list_notify(wcroot, new_rev, new_rev,
                                             notify_func, notify_baton,
                                             scratch_pool));
  if (notify_func)
    {
      svn_wc_notify_t *notify;

      notify = svn_wc_create_notify(svn_dirent_join(wcroot->abspath,
                                                    local_relpath,
                                                    scratch_pool),
                                    svn_wc_notify_update_completed,
                                    scratch_pool);
      notify->kind = svn_node_none;
      notify->content_state = svn_wc_notify_state_inapplicable;
      notify->prop_state = svn_wc_notify_state_inapplicable;
      notify->revision = new_rev;
      notify_func(notify_baton, notify, scratch_pool);
    }


  return SVN_NO_ERROR;
}
