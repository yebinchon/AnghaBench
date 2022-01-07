
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


typedef scalar_t__ svn_wc_notify_state_t ;
typedef int svn_wc_conflict_version_t ;
typedef int svn_error_t ;
struct TYPE_19__ {int revision; } ;
typedef TYPE_1__ svn_diff_source_t ;
struct TYPE_20__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
struct svn_diff_tree_processor_t {TYPE_3__* baton; } ;
struct merge_file_baton_t {scalar_t__ tree_conflict_reason; int parent_baton; int skip_reason; scalar_t__ shadowed; } ;
struct TYPE_21__ {int pool; int conflicted_paths; int merge_options; int diff3_cmd; int dry_run; TYPE_7__* ext_patterns; scalar_t__ record_only; TYPE_17__* target; int merge_source; TYPE_2__* ctx; } ;
typedef TYPE_3__ merge_cmd_baton_t ;
typedef enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_22__ {scalar_t__ nelts; } ;
typedef TYPE_4__ apr_array_header_t ;
struct TYPE_23__ {scalar_t__ nelts; } ;
struct TYPE_18__ {int abspath; } ;


 scalar_t__ CONFLICT_REASON_NONE ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int alloc_and_store_path (int *,char const*,int ) ;
 char* apr_psprintf (int *,int ,char*,char const*,...) ;
 int make_conflict_versions (int const**,int const**,char const*,int ,int ,int *,TYPE_17__*,int *,int *) ;
 int mark_file_edited (TYPE_3__*,struct merge_file_baton_t*,char const*,int *) ;
 int prepare_merge_props_changed (TYPE_4__ const**,char const*,TYPE_4__ const*,TYPE_3__*,int *,int *) ;
 int record_skip (TYPE_3__*,char const*,int ,int ,int ,int ,int *) ;
 int record_update_update (TYPE_3__*,char const*,int ,scalar_t__,scalar_t__,int *) ;
 scalar_t__ svn_cstring_match_glob_list (char const*,TYPE_7__*) ;
 scalar_t__ svn_dirent_is_absolute (char const*) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_node_file ;
 int svn_path_splitext (int *,char const**,char const*,int *) ;
 int svn_wc_merge5 (int*,scalar_t__*,int ,char const*,char const*,char const*,char const*,char const*,char const*,int const*,int const*,int ,int ,int ,int *,TYPE_4__ const*,int *,int *,int ,int ,int *) ;
 int svn_wc_merge_conflict ;
 int svn_wc_merge_merged ;
 int svn_wc_merge_no_merge ;
 int svn_wc_merge_props3 (scalar_t__*,int ,char const*,int const*,int const*,int *,TYPE_4__ const*,int ,int *,int *,int ,int ,int *) ;
 int svn_wc_merge_unchanged ;
 scalar_t__ svn_wc_notify_state_changed ;
 scalar_t__ svn_wc_notify_state_conflicted ;
 scalar_t__ svn_wc_notify_state_merged ;
 scalar_t__ svn_wc_notify_state_missing ;
 scalar_t__ svn_wc_notify_state_unchanged ;
 int svn_wc_notify_update_shadowed_update ;
 int svn_wc_text_modified_p2 (scalar_t__*,int ,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
merge_file_changed(const char *relpath,
                  const svn_diff_source_t *left_source,
                  const svn_diff_source_t *right_source,
                  const char *left_file,
                  const char *right_file,
                            apr_hash_t *left_props,
                            apr_hash_t *right_props,
                  svn_boolean_t file_modified,
                  const apr_array_header_t *prop_changes,
                  void *file_baton,
                  const struct svn_diff_tree_processor_t *processor,
                  apr_pool_t *scratch_pool)
{
  merge_cmd_baton_t *merge_b = processor->baton;
  struct merge_file_baton_t *fb = file_baton;
  svn_client_ctx_t *ctx = merge_b->ctx;
  const char *local_abspath = svn_dirent_join(merge_b->target->abspath,
                                              relpath, scratch_pool);
  const svn_wc_conflict_version_t *left;
  const svn_wc_conflict_version_t *right;
  svn_wc_notify_state_t text_state;
  svn_wc_notify_state_t property_state;

  SVN_ERR_ASSERT(local_abspath && svn_dirent_is_absolute(local_abspath));
  SVN_ERR_ASSERT(!left_file || svn_dirent_is_absolute(left_file));
  SVN_ERR_ASSERT(!right_file || svn_dirent_is_absolute(right_file));

  SVN_ERR(mark_file_edited(merge_b, fb, local_abspath, scratch_pool));

  if (fb->shadowed)
    {
      if (fb->tree_conflict_reason == CONFLICT_REASON_NONE)
        {

          SVN_ERR(record_skip(merge_b, local_abspath, svn_node_file,
                              svn_wc_notify_update_shadowed_update,
                              fb->skip_reason, fb->parent_baton,
                              scratch_pool));
        }

      return SVN_NO_ERROR;
    }






  property_state = svn_wc_notify_state_unchanged;
  text_state = svn_wc_notify_state_unchanged;

  SVN_ERR(prepare_merge_props_changed(&prop_changes, local_abspath,
                                      prop_changes, merge_b,
                                      scratch_pool, scratch_pool));

  SVN_ERR(make_conflict_versions(&left, &right, local_abspath,
                                 svn_node_file, svn_node_file,
                                 &merge_b->merge_source, merge_b->target,
                                 scratch_pool, scratch_pool));


  if ((merge_b->record_only || !left_file) && prop_changes->nelts)
    {
      SVN_ERR(svn_wc_merge_props3(&property_state, ctx->wc_ctx, local_abspath,
                                  left, right,
                                  left_props, prop_changes,
                                  merge_b->dry_run,
                                  ((void*)0), ((void*)0),
                                  ctx->cancel_func, ctx->cancel_baton,
                                  scratch_pool));
      if (property_state == svn_wc_notify_state_conflicted)
        {
          alloc_and_store_path(&merge_b->conflicted_paths, local_abspath,
                               merge_b->pool);
        }
    }


  if (merge_b->record_only)
    {

    }
  else if (left_file)
    {
      svn_boolean_t has_local_mods;
      enum svn_wc_merge_outcome_t content_outcome;
      const char *target_label;
      const char *left_label;
      const char *right_label;
      const char *path_ext = "";

      if (merge_b->ext_patterns && merge_b->ext_patterns->nelts)
        {
          svn_path_splitext(((void*)0), &path_ext, local_abspath, scratch_pool);
          if (! (*path_ext
                 && svn_cstring_match_glob_list(path_ext,
                                                merge_b->ext_patterns)))
            {
              path_ext = "";
            }
        }





      target_label = apr_psprintf(scratch_pool, _(".working%s%s"),
                                  *path_ext ? "." : "", path_ext);
      left_label = apr_psprintf(scratch_pool,
                                _(".merge-left.r%ld%s%s"),
                                left_source->revision,
                                *path_ext ? "." : "", path_ext);
      right_label = apr_psprintf(scratch_pool,
                                 _(".merge-right.r%ld%s%s"),
                                 right_source->revision,
                                 *path_ext ? "." : "", path_ext);

      SVN_ERR(svn_wc_text_modified_p2(&has_local_mods, ctx->wc_ctx,
                                      local_abspath, FALSE, scratch_pool));



      SVN_ERR(svn_wc_merge5(&content_outcome, &property_state, ctx->wc_ctx,
                            left_file, right_file, local_abspath,
                            left_label, right_label, target_label,
                            left, right,
                            merge_b->dry_run, merge_b->diff3_cmd,
                            merge_b->merge_options,
                            left_props, prop_changes,
                            ((void*)0), ((void*)0),
                            ctx->cancel_func,
                            ctx->cancel_baton,
                            scratch_pool));

      if (content_outcome == svn_wc_merge_conflict
          || property_state == svn_wc_notify_state_conflicted)
        {
          alloc_and_store_path(&merge_b->conflicted_paths, local_abspath,
                               merge_b->pool);
        }

      if (content_outcome == svn_wc_merge_conflict)
        text_state = svn_wc_notify_state_conflicted;
      else if (has_local_mods
               && content_outcome != svn_wc_merge_unchanged)
        text_state = svn_wc_notify_state_merged;
      else if (content_outcome == svn_wc_merge_merged)
        text_state = svn_wc_notify_state_changed;
      else if (content_outcome == svn_wc_merge_no_merge)
        text_state = svn_wc_notify_state_missing;
      else
        text_state = svn_wc_notify_state_unchanged;
    }

  if (text_state == svn_wc_notify_state_conflicted
      || text_state == svn_wc_notify_state_merged
      || text_state == svn_wc_notify_state_changed
      || property_state == svn_wc_notify_state_conflicted
      || property_state == svn_wc_notify_state_merged
      || property_state == svn_wc_notify_state_changed)
    {
      SVN_ERR(record_update_update(merge_b, local_abspath, svn_node_file,
                                   text_state, property_state,
                                   scratch_pool));
    }

  return SVN_NO_ERROR;
}
