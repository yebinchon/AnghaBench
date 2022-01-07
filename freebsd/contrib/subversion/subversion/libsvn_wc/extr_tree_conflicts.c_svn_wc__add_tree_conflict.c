
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
struct TYPE_15__ {int operation; int local_abspath; int src_right_version; int src_left_version; int action; int reason; } ;
typedef TYPE_2__ svn_wc_conflict_description2_t ;
typedef int svn_skel_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 TYPE_3__* SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_local_style (int ,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_wc__conflict_skel_add_tree_conflict (int *,int ,int ,int ,int ,int *,int *,int *) ;
 int * svn_wc__conflict_skel_create (int *) ;
 int svn_wc__conflict_skel_set_op_merge (int *,int ,int ,int *,int *) ;
 int svn_wc__conflict_skel_set_op_switch (int *,int ,int ,int *,int *) ;
 int svn_wc__conflict_skel_set_op_update (int *,int ,int ,int *,int *) ;
 TYPE_3__* svn_wc__db_op_mark_conflict (int ,int ,int *,int *,int *) ;
 TYPE_3__* svn_wc__internal_conflicted_p (int *,int *,scalar_t__*,int ,int ,int *) ;
 int svn_wc_conflict_reason_moved_away ;
 int svn_wc_conflict_reason_moved_here ;




svn_error_t *
svn_wc__add_tree_conflict(svn_wc_context_t *wc_ctx,
                          const svn_wc_conflict_description2_t *conflict,
                          apr_pool_t *scratch_pool)
{
  svn_boolean_t existing_conflict;
  svn_skel_t *conflict_skel;
  svn_error_t *err;

  SVN_ERR_ASSERT(conflict != ((void*)0));
  SVN_ERR_ASSERT(conflict->operation == 130 ||
                 (conflict->reason != svn_wc_conflict_reason_moved_away &&
                  conflict->reason != svn_wc_conflict_reason_moved_here));


  err = svn_wc__internal_conflicted_p(((void*)0), ((void*)0), &existing_conflict,
                                      wc_ctx->db, conflict->local_abspath,
                                      scratch_pool);
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);

      svn_error_clear(err);
    }
  else if (existing_conflict)
    return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                             _("Attempt to add tree conflict that already "
                               "exists at '%s'"),
                             svn_dirent_local_style(conflict->local_abspath,
                                                    scratch_pool));
  else if (!conflict)
    return SVN_NO_ERROR;

  conflict_skel = svn_wc__conflict_skel_create(scratch_pool);

  SVN_ERR(svn_wc__conflict_skel_add_tree_conflict(conflict_skel, wc_ctx->db,
                                                  conflict->local_abspath,
                                                  conflict->reason,
                                                  conflict->action,
                                                  ((void*)0),
                                                  scratch_pool, scratch_pool));

  switch (conflict->operation)
    {
      case 128:
      default:
        SVN_ERR(svn_wc__conflict_skel_set_op_update(conflict_skel,
                                                    conflict->src_left_version,
                                                    conflict->src_right_version,
                                                    scratch_pool, scratch_pool));
        break;
      case 129:
        SVN_ERR(svn_wc__conflict_skel_set_op_switch(conflict_skel,
                                                    conflict->src_left_version,
                                                    conflict->src_right_version,
                                                    scratch_pool, scratch_pool));
        break;
      case 130:
        SVN_ERR(svn_wc__conflict_skel_set_op_merge(conflict_skel,
                                                   conflict->src_left_version,
                                                   conflict->src_right_version,
                                                   scratch_pool, scratch_pool));
        break;
    }

  return svn_error_trace(
                svn_wc__db_op_mark_conflict(wc_ctx->db, conflict->local_abspath,
                                            conflict_skel, ((void*)0), scratch_pool));
}
