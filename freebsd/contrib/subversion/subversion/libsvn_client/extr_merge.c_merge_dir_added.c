
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef scalar_t__ svn_wc_notify_state_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_17__ {int revision; } ;
typedef TYPE_4__ svn_diff_source_t ;
struct svn_diff_tree_processor_t {TYPE_5__* baton; } ;
struct merge_dir_baton_t {scalar_t__ tree_conflict_reason; TYPE_7__* parent_baton; scalar_t__ edited; int skip_reason; scalar_t__ shadowed; } ;
struct TYPE_15__ {TYPE_1__* loc2; scalar_t__ ancestral; } ;
struct TYPE_18__ {int pool; int conflicted_paths; TYPE_3__* ctx; int dry_run; int paths_with_new_mergeinfo; TYPE_12__* target; TYPE_2__ merge_source; scalar_t__ same_repos; int added_abspaths; scalar_t__ reintegrate_merge; int record_only; } ;
typedef TYPE_5__ merge_cmd_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_19__ {int added; } ;
struct TYPE_16__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
struct TYPE_14__ {int url; } ;
struct TYPE_13__ {int abspath; } ;


 scalar_t__ CONFLICT_REASON_NONE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int alloc_and_store_path (int *,char const*,int ) ;
 int apr_hash_make (int *) ;
 int check_repos_match (TYPE_12__*,char const*,char const*,int *) ;
 int handle_pending_notifications (TYPE_5__*,struct merge_dir_baton_t*,int *) ;
 int mark_dir_edited (TYPE_5__*,struct merge_dir_baton_t*,char const*,int *) ;
 int record_skip (TYPE_5__*,char const*,int ,int ,int ,TYPE_7__*,int *) ;
 int store_path (int ,char const*) ;
 int svn_categorize_props (int ,int *,int *,int **,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 char* svn_dirent_is_child (int ,char const*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 scalar_t__ svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,int *) ;
 int svn_node_dir ;
 char* svn_path_url_add_component2 (int ,char const*,int *) ;
 int * svn_prop_array_to_hash (int *,int *) ;
 int svn_prop_hash_to_array (int *,int *) ;
 int svn_wc__complete_directory_add (int ,char const*,int *,char const*,int ,int *) ;
 int svn_wc_merge_props3 (scalar_t__*,int ,char const*,int *,int *,int ,int ,int ,int *,int *,int ,int ,int *) ;
 scalar_t__ svn_wc_notify_state_conflicted ;
 int svn_wc_notify_update_shadowed_add ;

__attribute__((used)) static svn_error_t *
merge_dir_added(const char *relpath,
                const svn_diff_source_t *copyfrom_source,
                const svn_diff_source_t *right_source,
                          apr_hash_t *copyfrom_props,
                          apr_hash_t *right_props,
                void *dir_baton,
                const struct svn_diff_tree_processor_t *processor,
                apr_pool_t *scratch_pool)
{
  merge_cmd_baton_t *merge_b = processor->baton;
  struct merge_dir_baton_t *db = dir_baton;
  const char *local_abspath = svn_dirent_join(merge_b->target->abspath,
                                              relpath, scratch_pool);


  SVN_ERR(handle_pending_notifications(merge_b, db, scratch_pool));
  SVN_ERR(mark_dir_edited(merge_b, db, local_abspath, scratch_pool));

  if (db->shadowed)
    {
      if (db->tree_conflict_reason == CONFLICT_REASON_NONE)
        {

          SVN_ERR(record_skip(merge_b, local_abspath, svn_node_dir,
                              svn_wc_notify_update_shadowed_add,
                              db->skip_reason, db->parent_baton,
                              scratch_pool));
        }

      return SVN_NO_ERROR;
    }

  SVN_ERR_ASSERT(
                 db->edited
                 && ! merge_b->record_only
                 );

  if ((merge_b->merge_source.ancestral || merge_b->reintegrate_merge)
      && ( !db->parent_baton || !db->parent_baton->added))
    {

      store_path(merge_b->added_abspaths, local_abspath);
    }

  if (merge_b->same_repos)
    {
      const char *copyfrom_url;
      svn_revnum_t copyfrom_rev;
      const char *parent_abspath;
      const char *child;


      apr_hash_t *new_pristine_props = right_props;

      parent_abspath = svn_dirent_dirname(local_abspath, scratch_pool);
      child = svn_dirent_is_child(merge_b->target->abspath, local_abspath, ((void*)0));
      SVN_ERR_ASSERT(child != ((void*)0));

      copyfrom_url = svn_path_url_add_component2(merge_b->merge_source.loc2->url,
                                                 child, scratch_pool);
      copyfrom_rev = right_source->revision;

      SVN_ERR(check_repos_match(merge_b->target, parent_abspath, copyfrom_url,
                                scratch_pool));

      if (!merge_b->dry_run)
        {
          SVN_ERR(svn_wc__complete_directory_add(merge_b->ctx->wc_ctx,
                                                local_abspath,
                                                new_pristine_props,
                                                copyfrom_url, copyfrom_rev,
                                                scratch_pool));
        }

      if (svn_hash_gets(new_pristine_props, SVN_PROP_MERGEINFO))
        {
          alloc_and_store_path(&merge_b->paths_with_new_mergeinfo,
                               local_abspath, merge_b->pool);
        }
    }
  else
    {
      apr_array_header_t *regular_props;
      apr_hash_t *new_props;
      svn_wc_notify_state_t prop_state;

      SVN_ERR(svn_categorize_props(svn_prop_hash_to_array(right_props,
                                                          scratch_pool),
                                   ((void*)0), ((void*)0), &regular_props, scratch_pool));

      new_props = svn_prop_array_to_hash(regular_props, scratch_pool);

      svn_hash_sets(new_props, SVN_PROP_MERGEINFO, ((void*)0));






      SVN_ERR(svn_wc_merge_props3(&prop_state, merge_b->ctx->wc_ctx,
                                  local_abspath,
                                  ((void*)0), ((void*)0),
                                  apr_hash_make(scratch_pool),
                                  svn_prop_hash_to_array(new_props,
                                                         scratch_pool),
                                  merge_b->dry_run,
                                  ((void*)0), ((void*)0),
                                  merge_b->ctx->cancel_func,
                                  merge_b->ctx->cancel_baton,
                                  scratch_pool));
      if (prop_state == svn_wc_notify_state_conflicted)
        {
          alloc_and_store_path(&merge_b->conflicted_paths, local_abspath,
                               merge_b->pool);
        }
    }

  return SVN_NO_ERROR;
}
