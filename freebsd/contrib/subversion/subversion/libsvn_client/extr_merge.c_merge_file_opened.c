
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ svn_wc_notify_state_t ;
struct TYPE_16__ {scalar_t__ reason; TYPE_4__* src_left_version; int node_kind; } ;
typedef TYPE_5__ svn_wc_conflict_description2_t ;
typedef int svn_error_t ;
typedef int svn_diff_source_t ;
typedef scalar_t__ svn_depth_t ;
typedef void* svn_boolean_t ;
struct svn_diff_tree_processor_t {TYPE_6__* baton; } ;
struct merge_file_baton_t {scalar_t__ tree_conflict_reason; scalar_t__ tree_conflict_local_node_kind; void* shadowed; scalar_t__ skip_reason; void* add_is_replace; void* tree_conflict_action; void* added; struct merge_dir_baton_t* parent_baton; scalar_t__ tree_conflict_merge_right_node_kind; scalar_t__ tree_conflict_merge_left_node_kind; } ;
struct merge_dir_baton_t {scalar_t__ added; scalar_t__ new_tree_conflicts; scalar_t__ pending_deletes; TYPE_3__* delete_state; scalar_t__ skip_reason; void* shadowed; } ;
struct TYPE_17__ {TYPE_2__* ctx; scalar_t__ dry_run; TYPE_1__* target; } ;
typedef TYPE_6__ merge_cmd_baton_t ;
typedef int apr_pool_t ;
struct TYPE_15__ {int node_kind; } ;
struct TYPE_14__ {scalar_t__ found_edit; } ;
struct TYPE_13__ {int wc_ctx; } ;
struct TYPE_12__ {int abspath; } ;


 scalar_t__ CONFLICT_REASON_NONE ;
 void* CONFLICT_REASON_SKIP ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 struct merge_file_baton_t* apr_pcalloc (int *,int) ;
 int mark_file_edited (TYPE_6__*,struct merge_file_baton_t*,char const*,int *) ;
 int perform_obstruction_check (scalar_t__*,void**,void**,scalar_t__*,scalar_t__*,TYPE_6__*,char const*,int *) ;
 int record_tree_conflict (TYPE_6__*,char const*,struct merge_dir_baton_t*,int ,int ,scalar_t__,void*,scalar_t__,TYPE_5__ const*,int ,int *) ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_unknown ;
 char* svn_dirent_join (int ,char const*,int *) ;
 TYPE_5__* svn_hash_gets (scalar_t__,char const*) ;
 int svn_hash_sets (scalar_t__,char const*,int *) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_wc__node_is_added (void**,int ,char const*,int *) ;
 void* svn_wc_conflict_action_add ;
 void* svn_wc_conflict_action_delete ;
 void* svn_wc_conflict_action_edit ;
 void* svn_wc_conflict_action_replace ;
 void* svn_wc_conflict_reason_added ;
 scalar_t__ svn_wc_conflict_reason_deleted ;
 scalar_t__ svn_wc_conflict_reason_missing ;
 scalar_t__ svn_wc_conflict_reason_moved_away ;
 void* svn_wc_conflict_reason_obstructed ;
 scalar_t__ svn_wc_notify_state_inapplicable ;
 scalar_t__ svn_wc_notify_state_missing ;
 scalar_t__ svn_wc_notify_state_unknown ;

__attribute__((used)) static svn_error_t *
merge_file_opened(void **new_file_baton,
                  svn_boolean_t *skip,
                  const char *relpath,
                  const svn_diff_source_t *left_source,
                  const svn_diff_source_t *right_source,
                  const svn_diff_source_t *copyfrom_source,
                  void *dir_baton,
                  const struct svn_diff_tree_processor_t *processor,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  merge_cmd_baton_t *merge_b = processor->baton;
  struct merge_dir_baton_t *pdb = dir_baton;
  struct merge_file_baton_t *fb;
  const char *local_abspath = svn_dirent_join(merge_b->target->abspath,
                                              relpath, scratch_pool);

  fb = apr_pcalloc(result_pool, sizeof(*fb));
  fb->tree_conflict_reason = CONFLICT_REASON_NONE;
  fb->tree_conflict_action = svn_wc_conflict_action_edit;
  fb->skip_reason = svn_wc_notify_state_unknown;

  if (left_source)
    fb->tree_conflict_merge_left_node_kind = svn_node_file;
  else
    fb->tree_conflict_merge_left_node_kind = svn_node_none;

  if (right_source)
    fb->tree_conflict_merge_right_node_kind = svn_node_file;
  else
    fb->tree_conflict_merge_right_node_kind = svn_node_none;

  *new_file_baton = fb;

  if (pdb)
    {
      fb->parent_baton = pdb;
      fb->shadowed = pdb->shadowed;
      fb->skip_reason = pdb->skip_reason;
    }

  if (fb->shadowed)
    {

    }
  else if (left_source != ((void*)0))
    {

      svn_boolean_t is_deleted;
      svn_boolean_t excluded;
      svn_depth_t parent_depth;

      if (! right_source)
        fb->tree_conflict_action = svn_wc_conflict_action_delete;

      {
        svn_wc_notify_state_t obstr_state;

        SVN_ERR(perform_obstruction_check(&obstr_state, &is_deleted, &excluded,
                                          &fb->tree_conflict_local_node_kind,
                                          &parent_depth,
                                          merge_b, local_abspath,
                                          scratch_pool));

        if (obstr_state != svn_wc_notify_state_inapplicable)
          {
            fb->shadowed = TRUE;
            fb->tree_conflict_reason = CONFLICT_REASON_SKIP;
            fb->skip_reason = obstr_state;
            return SVN_NO_ERROR;
          }

        if (is_deleted)
          fb->tree_conflict_local_node_kind = svn_node_none;
      }

      if (fb->tree_conflict_local_node_kind == svn_node_none)
        {
          fb->shadowed = TRUE;
          if (pdb && (excluded
                      || (parent_depth != svn_depth_unknown &&
                          parent_depth < svn_depth_files)))
            {
                fb->shadowed = TRUE;

                fb->tree_conflict_reason = CONFLICT_REASON_SKIP;
                fb->skip_reason = svn_wc_notify_state_missing;
                return SVN_NO_ERROR;
            }

          if (is_deleted)
            fb->tree_conflict_reason = svn_wc_conflict_reason_deleted;
          else
            fb->tree_conflict_reason = svn_wc_conflict_reason_missing;


          *skip = TRUE;
          SVN_ERR(mark_file_edited(merge_b, fb, local_abspath, scratch_pool));
          return SVN_NO_ERROR;

        }
      else if (fb->tree_conflict_local_node_kind != svn_node_file)
        {
          svn_boolean_t added;
          fb->shadowed = TRUE;

          SVN_ERR(svn_wc__node_is_added(&added, merge_b->ctx->wc_ctx,
                                        local_abspath, scratch_pool));

          fb->tree_conflict_reason = added ? svn_wc_conflict_reason_added
                                           : svn_wc_conflict_reason_obstructed;


          *skip = TRUE;
          SVN_ERR(mark_file_edited(merge_b, fb, local_abspath, scratch_pool));
          return SVN_NO_ERROR;

        }

      if (! right_source)
        {

          fb->tree_conflict_action = svn_wc_conflict_action_delete;
          SVN_ERR(mark_file_edited(merge_b, fb, local_abspath, scratch_pool));

          if (fb->shadowed)
            {
              return SVN_NO_ERROR;
            }


          if (pdb && pdb->delete_state
              && pdb->delete_state->found_edit)
            {

              *skip = TRUE;
            }
        }
    }
  else
    {
      const svn_wc_conflict_description2_t *old_tc = ((void*)0);


      fb->added = TRUE;
      fb->tree_conflict_action = svn_wc_conflict_action_add;

      if (pdb && pdb->pending_deletes
          && svn_hash_gets(pdb->pending_deletes, local_abspath))
        {
          fb->add_is_replace = TRUE;
          fb->tree_conflict_action = svn_wc_conflict_action_replace;

          svn_hash_sets(pdb->pending_deletes, local_abspath, ((void*)0));
        }

      if (pdb
          && pdb->new_tree_conflicts
          && (old_tc = svn_hash_gets(pdb->new_tree_conflicts, local_abspath)))
        {
          fb->tree_conflict_action = svn_wc_conflict_action_replace;
          fb->tree_conflict_reason = old_tc->reason;


          SVN_ERR(record_tree_conflict(merge_b, local_abspath, pdb,
                                       old_tc->node_kind,
                                       old_tc->src_left_version->node_kind,
                                       svn_node_file,
                                       fb->tree_conflict_action,
                                       fb->tree_conflict_reason,
                                       old_tc, FALSE,
                                       scratch_pool));

          if (old_tc->reason == svn_wc_conflict_reason_deleted
              || old_tc->reason == svn_wc_conflict_reason_moved_away)
            {





            }
          else
            {
              *skip = TRUE;

              return SVN_NO_ERROR;
            }
        }
      else if (! (merge_b->dry_run
                  && ((pdb && pdb->added) || fb->add_is_replace)))
        {
          svn_wc_notify_state_t obstr_state;
          svn_boolean_t is_deleted;

          SVN_ERR(perform_obstruction_check(&obstr_state, &is_deleted, ((void*)0),
                                            &fb->tree_conflict_local_node_kind,
                                            ((void*)0), merge_b, local_abspath,
                                            scratch_pool));

          if (obstr_state != svn_wc_notify_state_inapplicable)
            {

              fb->shadowed = TRUE;
              fb->tree_conflict_reason = CONFLICT_REASON_SKIP;
              fb->skip_reason = obstr_state;
            }
          else if (fb->tree_conflict_local_node_kind != svn_node_none
                   && !is_deleted)
            {

              svn_boolean_t added;

              fb->shadowed = TRUE;
              SVN_ERR(svn_wc__node_is_added(&added, merge_b->ctx->wc_ctx,
                                            local_abspath, scratch_pool));

              fb->tree_conflict_reason = added ? svn_wc_conflict_reason_added
                                               : svn_wc_conflict_reason_obstructed;
            }
        }


      SVN_ERR(mark_file_edited(merge_b, fb, local_abspath, scratch_pool));
    }

  return SVN_NO_ERROR;
}
