
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_wc_conflict_reason_t ;
typedef int svn_wc_conflict_action_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_skel_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct edit_baton {int db; int cancel_baton; int cancel_func; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_MALFUNCTION () ;
 int SVN_ERR_WC_FOUND_CONFLICT ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_WC_CONFLICT_REASON_NONE ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_check_path (char const*,int *,int *) ;
 int svn_node_none ;
 int svn_wc__conflict_skel_add_tree_conflict (int *,int ,char const*,scalar_t__,int ,char const*,int *,int *) ;
 int * svn_wc__conflict_skel_create (int *) ;
 int svn_wc__db_base_moved_to (int *,int *,int *,char const**,int ,char const*,int *,int *) ;
 int svn_wc__db_scan_addition (int*,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 int svn_wc__node_has_local_mods (int *,int *,int ,char const*,int ,int ,int ,int *) ;
 int svn_wc_conflict_action_add ;
 int svn_wc_conflict_action_delete ;
 int svn_wc_conflict_action_edit ;
 int svn_wc_conflict_action_replace ;
 scalar_t__ svn_wc_conflict_reason_added ;
 scalar_t__ svn_wc_conflict_reason_deleted ;
 scalar_t__ svn_wc_conflict_reason_edited ;
 scalar_t__ svn_wc_conflict_reason_moved_away ;
 scalar_t__ svn_wc_conflict_reason_moved_here ;
 scalar_t__ svn_wc_conflict_reason_obstructed ;
 scalar_t__ svn_wc_conflict_reason_replaced ;

__attribute__((used)) static svn_error_t *
check_tree_conflict(svn_skel_t **pconflict,
                    struct edit_baton *eb,
                    const char *local_abspath,
                    svn_wc__db_status_t working_status,
                    svn_boolean_t exists_in_repos,
                    svn_node_kind_t expected_kind,
                    svn_wc_conflict_action_t action,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_wc_conflict_reason_t reason = SVN_WC_CONFLICT_REASON_NONE;
  svn_boolean_t modified = FALSE;
  const char *move_src_op_root_abspath = ((void*)0);

  *pconflict = ((void*)0);



  switch (working_status)
    {
      case 137:
      case 131:
      case 135:
        if (!exists_in_repos)
          {
            SVN_ERR_ASSERT(action == svn_wc_conflict_action_add);


            if (working_status == 137)
              SVN_ERR(svn_wc__db_scan_addition(&working_status, ((void*)0), ((void*)0),
                                               ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                               ((void*)0), ((void*)0),
                                               eb->db, local_abspath,
                                               scratch_pool, scratch_pool));

            if (working_status == 131)
              reason = svn_wc_conflict_reason_moved_here;
            else
              reason = svn_wc_conflict_reason_added;
          }
        else
          {
            reason = svn_wc_conflict_reason_replaced;
          }
        break;


      case 134:
        {
          SVN_ERR(svn_wc__db_base_moved_to(((void*)0), ((void*)0), ((void*)0),
                                           &move_src_op_root_abspath,
                                           eb->db, local_abspath,
                                           scratch_pool, scratch_pool));
          if (move_src_op_root_abspath)
            reason = svn_wc_conflict_reason_moved_away;
          else
            reason = svn_wc_conflict_reason_deleted;
        }
        break;

      case 132:






      case 130:
        if (action == svn_wc_conflict_action_edit)
          {






            if (exists_in_repos)
              {
                svn_node_kind_t disk_kind;

                SVN_ERR(svn_io_check_path(local_abspath, &disk_kind,
                                          scratch_pool));

                if (disk_kind != expected_kind && disk_kind != svn_node_none)
                  {
                    reason = svn_wc_conflict_reason_obstructed;
                    break;
                  }

              }
            return SVN_NO_ERROR;
          }



        SVN_ERR_ASSERT(action == svn_wc_conflict_action_delete);
        SVN_ERR(svn_wc__node_has_local_mods(&modified, ((void*)0),
                                            eb->db, local_abspath, FALSE,
                                            eb->cancel_func, eb->cancel_baton,
                                            scratch_pool));

        if (modified)
          {
            if (working_status == 134)
              reason = svn_wc_conflict_reason_deleted;
            else
              reason = svn_wc_conflict_reason_edited;
          }
        break;

      case 128:


      case 133:

      case 129:


        return SVN_NO_ERROR;

      case 136:

        SVN_ERR_MALFUNCTION();
        break;

    }

  if (reason == SVN_WC_CONFLICT_REASON_NONE)

    return SVN_NO_ERROR;




  if (reason == svn_wc_conflict_reason_edited
      || reason == svn_wc_conflict_reason_obstructed
      || reason == svn_wc_conflict_reason_deleted
      || reason == svn_wc_conflict_reason_moved_away
      || reason == svn_wc_conflict_reason_replaced)
    {



    if (action != svn_wc_conflict_action_edit
        && action != svn_wc_conflict_action_delete
        && action != svn_wc_conflict_action_replace)
      return svn_error_createf(SVN_ERR_WC_FOUND_CONFLICT, ((void*)0),
               _("Unexpected attempt to add a node at path '%s'"),
               svn_dirent_local_style(local_abspath, scratch_pool));
    }
  else if (reason == svn_wc_conflict_reason_added ||
           reason == svn_wc_conflict_reason_moved_here)
    {



      if (action != svn_wc_conflict_action_add)
        return svn_error_createf(SVN_ERR_WC_FOUND_CONFLICT, ((void*)0),
                 _("Unexpected attempt to edit, delete, or replace "
                   "a node at path '%s'"),
                 svn_dirent_local_style(local_abspath, scratch_pool));

    }



  *pconflict = svn_wc__conflict_skel_create(result_pool);

  SVN_ERR(svn_wc__conflict_skel_add_tree_conflict(*pconflict,
                                                  eb->db, local_abspath,
                                                  reason,
                                                  action,
                                                  move_src_op_root_abspath,
                                                  result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
