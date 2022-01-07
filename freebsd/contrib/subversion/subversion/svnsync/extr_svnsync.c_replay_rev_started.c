
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
struct TYPE_4__ {int normalized_rev_props_count; scalar_t__ current_revision; int normalized_node_props_count; TYPE_2__* sb; int to_session; scalar_t__ has_commit_revprops_capability; } ;
typedef TYPE_1__ replay_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int quiet; int source_prop_encoding; int to_url; } ;


 int FALSE ;
 int SVNSYNC_PROP_CURRENTLY_COPYING ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_LOG ;
 int check_cancel ;
 int commit_callback ;
 int filter_exclude_date_author_sync ;
 int filter_include_log ;
 int * filter_props (int*,int *,int ,int *) ;
 int get_shim_callbacks (TYPE_1__*,int *) ;
 int svn_delta_get_cancellation_editor (int ,int *,int const*,void*,int const**,void**,int *) ;
 int svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_ra__register_editor_shim_callbacks (int ,int ) ;
 int svn_ra_change_rev_prop2 (int ,int ,int ,int *,int ,int *) ;
 int svn_ra_get_commit_editor3 (int ,int const**,void**,int *,int ,TYPE_2__*,int *,int ,int *) ;
 int svn_string_create_empty (int *) ;
 int svn_string_createf (int *,char*,scalar_t__) ;
 int svnsync_get_sync_editor (int const*,void*,scalar_t__,int ,int ,int ,int const**,void**,int *,int *) ;
 int svnsync_normalize_revprops (int *,int*,int ,int *) ;

__attribute__((used)) static svn_error_t *
replay_rev_started(svn_revnum_t revision,
                   void *replay_baton,
                   const svn_delta_editor_t **editor,
                   void **edit_baton,
                   apr_hash_t *rev_props,
                   apr_pool_t *pool)
{
  const svn_delta_editor_t *commit_editor;
  const svn_delta_editor_t *cancel_editor;
  const svn_delta_editor_t *sync_editor;
  void *commit_baton;
  void *cancel_baton;
  void *sync_baton;
  replay_baton_t *rb = replay_baton;
  apr_hash_t *filtered;
  int filtered_count;
  int normalized_count;
  SVN_ERR(svn_ra_change_rev_prop2(rb->to_session, 0,
                                  SVNSYNC_PROP_CURRENTLY_COPYING,
                                  ((void*)0),
                                  svn_string_createf(pool, "%ld", revision),
                                  pool));
  filtered = filter_props(&filtered_count, rev_props,
                          (rb->has_commit_revprops_capability
                            ? filter_exclude_date_author_sync
                            : filter_include_log),
                          pool);






  if (! svn_hash_gets(filtered, SVN_PROP_REVISION_LOG))
    svn_hash_sets(filtered, SVN_PROP_REVISION_LOG,
                  svn_string_create_empty(pool));




  SVN_ERR(svnsync_normalize_revprops(filtered, &normalized_count,
                                     rb->sb->source_prop_encoding, pool));
  rb->normalized_rev_props_count += normalized_count;





  SVN_ERR(svn_ra_get_commit_editor3(rb->to_session, &commit_editor,
                                    &commit_baton,
                                    filtered,
                                    commit_callback, rb->sb,
                                    ((void*)0), FALSE, pool));




  SVN_ERR(svnsync_get_sync_editor(commit_editor, commit_baton, revision - 1,
                                  rb->sb->to_url, rb->sb->source_prop_encoding,
                                  rb->sb->quiet, &sync_editor, &sync_baton,
                                  &(rb->normalized_node_props_count), pool));

  SVN_ERR(svn_delta_get_cancellation_editor(check_cancel, ((void*)0),
                                            sync_editor, sync_baton,
                                            &cancel_editor,
                                            &cancel_baton,
                                            pool));
  *editor = cancel_editor;
  *edit_baton = cancel_baton;

  rb->current_revision = revision;
  return SVN_NO_ERROR;
}
