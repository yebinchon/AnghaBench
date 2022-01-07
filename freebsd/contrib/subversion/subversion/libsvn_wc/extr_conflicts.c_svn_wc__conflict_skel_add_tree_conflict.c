
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ svn_wc_conflict_reason_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
typedef int svn_wc__db_t ;
struct TYPE_11__ {TYPE_1__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {TYPE_2__* next; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 char const* SVN_WC__CONFLICT_KIND_TREE ;
 int action_map ;
 int conflict__get_conflict (TYPE_2__**,TYPE_2__*,char const*) ;
 int reason_map ;
 TYPE_2__* svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend (TYPE_2__*,TYPE_2__*) ;
 int svn_skel__prepend_str (char const*,TYPE_2__*,int *) ;
 char const* svn_token__to_word (int ,scalar_t__) ;
 int svn_wc__db_to_relpath (char const**,int *,char const*,char const*,int *,int *) ;
 scalar_t__ svn_wc_conflict_reason_moved_away ;

svn_error_t *
svn_wc__conflict_skel_add_tree_conflict(svn_skel_t *conflict_skel,
                                        svn_wc__db_t *db,
                                        const char *wri_abspath,
                                        svn_wc_conflict_reason_t reason,
                                        svn_wc_conflict_action_t action,
                                        const char *move_src_op_root_abspath,
                                        apr_pool_t *result_pool,
                                        apr_pool_t *scratch_pool)
{
  svn_skel_t *tree_conflict;
  svn_skel_t *markers;

  SVN_ERR(conflict__get_conflict(&tree_conflict, conflict_skel,
                                 SVN_WC__CONFLICT_KIND_TREE));

  SVN_ERR_ASSERT(!tree_conflict);

  SVN_ERR_ASSERT(reason == svn_wc_conflict_reason_moved_away
                 || !move_src_op_root_abspath);

  tree_conflict = svn_skel__make_empty_list(result_pool);

  if (reason == svn_wc_conflict_reason_moved_away
      && move_src_op_root_abspath)
    {
      const char *move_src_op_root_relpath;

      SVN_ERR(svn_wc__db_to_relpath(&move_src_op_root_relpath,
                                    db, wri_abspath,
                                    move_src_op_root_abspath,
                                    result_pool, scratch_pool));

      svn_skel__prepend_str(move_src_op_root_relpath, tree_conflict,
                            result_pool);
    }

  svn_skel__prepend_str(svn_token__to_word(action_map, action),
                        tree_conflict, result_pool);

  svn_skel__prepend_str(svn_token__to_word(reason_map, reason),
                        tree_conflict, result_pool);


  markers = svn_skel__make_empty_list(result_pool);
  svn_skel__prepend(markers, tree_conflict);

  svn_skel__prepend_str(SVN_WC__CONFLICT_KIND_TREE, tree_conflict,
                        result_pool);


  svn_skel__prepend(tree_conflict, conflict_skel->children->next);

  return SVN_NO_ERROR;
}
