
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_17__ {int revision; } ;
typedef TYPE_4__ svn_diff_source_t ;
struct svn_diff_tree_processor_t {TYPE_5__* baton; } ;
struct merge_file_baton_t {scalar_t__ tree_conflict_reason; int add_is_replace; TYPE_8__* parent_baton; int skip_reason; scalar_t__ shadowed; } ;
struct TYPE_15__ {TYPE_1__* loc2; scalar_t__ ancestral; } ;
struct TYPE_18__ {int * use_sleep; TYPE_3__* ctx; int pool; int paths_with_new_mergeinfo; TYPE_12__* target; TYPE_2__ merge_source; scalar_t__ same_repos; int dry_run; int added_abspaths; scalar_t__ reintegrate_merge; scalar_t__ record_only; } ;
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
 int SVN_ERR_ASSERT (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int TRUE ;
 int alloc_and_store_path (int *,char const*,int ) ;
 int * apr_hash_make (int *) ;
 int check_repos_match (TYPE_12__*,char const*,char const*,int *) ;
 int mark_file_edited (TYPE_5__*,struct merge_file_baton_t*,char const*,int *) ;
 int record_skip (TYPE_5__*,char const*,int ,int ,int ,TYPE_8__*,int *) ;
 int record_update_add (TYPE_5__*,char const*,int ,int ,int *) ;
 int store_path (int ,char const*) ;
 int svn_categorize_props (int ,int *,int *,int **,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 scalar_t__ svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,int *) ;
 int svn_node_file ;
 char* svn_path_url_add_component2 (int ,char const*,int *) ;
 int * svn_prop_array_to_hash (int *,int *) ;
 int svn_prop_hash_to_array (int *,int *) ;
 int * svn_stream_empty (int *) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;
 int svn_wc_add_repos_file4 (int ,char const*,int *,int *,int *,int *,char const*,int ,int ,int ,int *) ;
 int svn_wc_notify_update_shadowed_add ;

__attribute__((used)) static svn_error_t *
merge_file_added(const char *relpath,
                 const svn_diff_source_t *copyfrom_source,
                 const svn_diff_source_t *right_source,
                 const char *copyfrom_file,
                 const char *right_file,
                           apr_hash_t *copyfrom_props,
                           apr_hash_t *right_props,
                 void *file_baton,
                 const struct svn_diff_tree_processor_t *processor,
                 apr_pool_t *scratch_pool)
{
  merge_cmd_baton_t *merge_b = processor->baton;
  struct merge_file_baton_t *fb = file_baton;
  const char *local_abspath = svn_dirent_join(merge_b->target->abspath,
                                              relpath, scratch_pool);
  apr_hash_t *pristine_props;
  apr_hash_t *new_props;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(mark_file_edited(merge_b, fb, local_abspath, scratch_pool));

  if (fb->shadowed)
    {
      if (fb->tree_conflict_reason == CONFLICT_REASON_NONE)
        {

          SVN_ERR(record_skip(merge_b, local_abspath, svn_node_file,
                              svn_wc_notify_update_shadowed_add,
                              fb->skip_reason, fb->parent_baton,
                              scratch_pool));
        }

      return SVN_NO_ERROR;
    }


  if (merge_b->record_only)
    {
      return SVN_NO_ERROR;
    }

  if ((merge_b->merge_source.ancestral || merge_b->reintegrate_merge)
      && ( !fb->parent_baton || !fb->parent_baton->added))
    {

      store_path(merge_b->added_abspaths, local_abspath);
    }

  if (!merge_b->dry_run)
    {
      const char *copyfrom_url;
      svn_revnum_t copyfrom_rev;
      svn_stream_t *new_contents, *pristine_contents;




      if (merge_b->same_repos)
        {
          copyfrom_url = svn_path_url_add_component2(
                                       merge_b->merge_source.loc2->url,
                                       relpath, scratch_pool);
          copyfrom_rev = right_source->revision;
          SVN_ERR(check_repos_match(merge_b->target, local_abspath,
                                    copyfrom_url, scratch_pool));
          SVN_ERR(svn_stream_open_readonly(&pristine_contents,
                                           right_file,
                                           scratch_pool,
                                           scratch_pool));
          new_contents = ((void*)0);

          pristine_props = right_props;
          new_props = ((void*)0);

          if (svn_hash_gets(pristine_props, SVN_PROP_MERGEINFO))
            {
              alloc_and_store_path(&merge_b->paths_with_new_mergeinfo,
                                   local_abspath, merge_b->pool);
            }
        }
      else
        {
          apr_array_header_t *regular_props;

          copyfrom_url = ((void*)0);
          copyfrom_rev = SVN_INVALID_REVNUM;

          pristine_contents = svn_stream_empty(scratch_pool);
          SVN_ERR(svn_stream_open_readonly(&new_contents, right_file,
                                           scratch_pool, scratch_pool));

          pristine_props = apr_hash_make(scratch_pool);


          SVN_ERR(svn_categorize_props(svn_prop_hash_to_array(right_props,
                                                              scratch_pool),
                                       ((void*)0), ((void*)0), &regular_props,
                                       scratch_pool));

          new_props = svn_prop_array_to_hash(regular_props, scratch_pool);


          svn_hash_sets(new_props, SVN_PROP_MERGEINFO, ((void*)0));
        }


      SVN_ERR(svn_wc_add_repos_file4(merge_b->ctx->wc_ctx,
                                      local_abspath,
                                      pristine_contents,
                                      new_contents,
                                      pristine_props, new_props,
                                      copyfrom_url, copyfrom_rev,
                                      merge_b->ctx->cancel_func,
                                      merge_b->ctx->cancel_baton,
                                      scratch_pool));


      *merge_b->use_sleep = TRUE;
    }

  SVN_ERR(record_update_add(merge_b, local_abspath, svn_node_file,
                            fb->add_is_replace, scratch_pool));

  return SVN_NO_ERROR;
}
