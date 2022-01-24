#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
struct TYPE_4__ {int normalized_rev_props_count; scalar_t__ current_revision; int /*<<< orphan*/  normalized_node_props_count; TYPE_2__* sb; int /*<<< orphan*/  to_session; scalar_t__ has_commit_revprops_capability; } ;
typedef  TYPE_1__ replay_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_5__ {int /*<<< orphan*/  quiet; int /*<<< orphan*/  source_prop_encoding; int /*<<< orphan*/  to_url; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVNSYNC_PROP_CURRENTLY_COPYING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_LOG ; 
 int /*<<< orphan*/  check_cancel ; 
 int /*<<< orphan*/  commit_callback ; 
 int /*<<< orphan*/  filter_exclude_date_author_sync ; 
 int /*<<< orphan*/  filter_include_log ; 
 int /*<<< orphan*/ * FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,void*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_revnum_t revision,
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

  /* We set this property so that if we error out for some reason
     we can later determine where we were in the process of
     merging a revision.  If we had committed the change, but we
     hadn't finished copying the revprops we need to know that, so
     we can go back and finish the job before we move on.

     NOTE: We have to set this before we start the commit editor,
     because ra_svn doesn't let you change rev props during a
     commit. */
  FUNC0(FUNC7(rb->to_session, 0,
                                  SVNSYNC_PROP_CURRENTLY_COPYING,
                                  NULL,
                                  FUNC10(pool, "%ld", revision),
                                  pool));

  /* The actual copy is just a replay hooked up to a commit.  Include
     all the revision properties from the source repositories, except
     'svn:author' and 'svn:date', those are not guaranteed to get
     through the editor anyway.
     If we're syncing to an non-commit-revprops capable server, filter
     out all revprops except svn:log and add them later in
     revplay_rev_finished. */
  filtered = FUNC1(&filtered_count, rev_props,
                          (rb->has_commit_revprops_capability
                            ? filter_exclude_date_author_sync
                            : filter_include_log),
                          pool);

  /* svn_ra_get_commit_editor3 requires the log message to be
     set. It's possible that we didn't receive 'svn:log' here, so we
     have to set it to at least the empty string. If there's a svn:log
     property on this revision, we will write the actual value in the
     replay_rev_finished callback. */
  if (! FUNC4(filtered, SVN_PROP_REVISION_LOG))
    FUNC5(filtered, SVN_PROP_REVISION_LOG,
                  FUNC9(pool));

  /* If necessary, normalize encoding and line ending style. Add the number
     of properties that required EOL normalization to the overall count
     in the replay baton. */
  FUNC0(FUNC12(filtered, &normalized_count,
                                     rb->sb->source_prop_encoding, pool));
  rb->normalized_rev_props_count += normalized_count;

#ifdef ENABLE_EV2_SHIMS
  SVN_ERR(svn_ra__register_editor_shim_callbacks(rb->to_session,
                                get_shim_callbacks(rb, pool)));
#endif
  FUNC0(FUNC8(rb->to_session, &commit_editor,
                                    &commit_baton,
                                    filtered,
                                    commit_callback, rb->sb,
                                    NULL, FALSE, pool));

  /* There's one catch though, the diff shows us props we can't send
     over the RA interface, so we need an editor that's smart enough
     to filter those out for us.  */
  FUNC0(FUNC11(commit_editor, commit_baton, revision - 1,
                                  rb->sb->to_url, rb->sb->source_prop_encoding,
                                  rb->sb->quiet, &sync_editor, &sync_baton,
                                  &(rb->normalized_node_props_count), pool));

  FUNC0(FUNC3(check_cancel, NULL,
                                            sync_editor, sync_baton,
                                            &cancel_editor,
                                            &cancel_baton,
                                            pool));
  *editor = cancel_editor;
  *edit_baton = cancel_baton;

  rb->current_revision = revision;
  return SVN_NO_ERROR;
}