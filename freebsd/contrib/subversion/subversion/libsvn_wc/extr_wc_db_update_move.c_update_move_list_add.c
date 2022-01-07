
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc_notify_state_t ;
typedef int svn_wc_notify_action_t ;
struct TYPE_5__ {int sdb; int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_INSERT_UPDATE_MOVE_LIST ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int kind_map_none ;
 int svn_sqlite__bindf (int *,char*,char const*,int ,int ,int ,int ,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__step_done (int *) ;
 int svn_wc__conflict_read_info (int *,int *,int *,int *,scalar_t__*,int *,int ,int *,int *,int *) ;
 int svn_wc__db_mark_conflict_internal (TYPE_1__*,char const*,int *,int *) ;
 int svn_wc__db_wq_add_internal (TYPE_1__*,int *,int *) ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_tree_conflict ;

__attribute__((used)) static svn_error_t *
update_move_list_add(svn_wc__db_wcroot_t *wcroot,
                     const char *local_relpath,
                     svn_wc__db_t *db,
                     svn_wc_notify_action_t action,
                     svn_node_kind_t kind,
                     svn_wc_notify_state_t content_state,
                     svn_wc_notify_state_t prop_state,
                     svn_skel_t *conflict,
                     svn_skel_t *work_item,
                     apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;

  if (conflict)
    {
      svn_boolean_t tree_conflict;

      SVN_ERR(svn_wc__conflict_read_info(((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         &tree_conflict,
                                         db, wcroot->abspath, conflict,
                                         scratch_pool, scratch_pool));
      if (tree_conflict)
        {
          action = svn_wc_notify_tree_conflict;
          content_state = svn_wc_notify_state_inapplicable;
          prop_state = svn_wc_notify_state_inapplicable;
        }
    }

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_INSERT_UPDATE_MOVE_LIST));
  SVN_ERR(svn_sqlite__bindf(stmt, "sdtdd", local_relpath,
                            action, kind_map_none, kind,
                            content_state, prop_state));
  SVN_ERR(svn_sqlite__step_done(stmt));

  if (conflict)
    SVN_ERR(svn_wc__db_mark_conflict_internal(wcroot, local_relpath, conflict,
                                              scratch_pool));

  if (work_item)
    SVN_ERR(svn_wc__db_wq_add_internal(wcroot, work_item, scratch_pool));

  return SVN_NO_ERROR;
}
