#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_txdelta_stream_t ;
struct TYPE_3__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_prop_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  (* svn_file_rev_handler_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct send_baton {int /*<<< orphan*/ * last_pool; int /*<<< orphan*/ * iterpool; int /*<<< orphan*/ * last_props; int /*<<< orphan*/  last_path; int /*<<< orphan*/ * last_root; scalar_t__ include_merged_revisions; } ;
struct path_revision {int /*<<< orphan*/  path; int /*<<< orphan*/  merged; int /*<<< orphan*/  revnum; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_delta_noop_window_handler ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(struct path_revision *path_rev,
                   svn_repos_t *repos,
                   struct send_baton *sb,
                   svn_file_rev_handler_t handler,
                   void *handler_baton)
{
  apr_hash_t *rev_props;
  apr_hash_t *props;
  apr_array_header_t *prop_diffs;
  svn_fs_root_t *root;
  svn_txdelta_stream_t *delta_stream;
  svn_txdelta_window_handler_t delta_handler = NULL;
  void *delta_baton = NULL;
  apr_pool_t *tmp_pool;  /* For swapping */
  svn_boolean_t contents_changed;
  svn_boolean_t props_changed;

  FUNC9(sb->iterpool);

  /* Get the revision properties. */
  FUNC0(FUNC7(&rev_props, repos->fs,
                                    path_rev->revnum, FALSE,
                                    sb->iterpool, sb->iterpool));

  /* Open the revision root. */
  FUNC0(FUNC8(&root, repos->fs, path_rev->revnum,
                               sb->iterpool));

  /* Check if the props *may* have changed. */
  if (sb->last_root)
    {
      /* We don't use svn_fs_props_different() because it's more
       * expensive. */
      FUNC0(FUNC6(&props_changed,
                                   sb->last_root, sb->last_path,
                                   root, path_rev->path, sb->iterpool));
    }
  else
    {
      props_changed = TRUE;
    }

  /* Calculate actual difference between last and current properties. */
  if (props_changed)
    {
      /* Get the file's properties for this revision and compute the diffs. */
      FUNC0(FUNC5(&props, root, path_rev->path,
                                   sb->iterpool));
      FUNC0(FUNC10(&prop_diffs, props, sb->last_props,
                             sb->iterpool));
    }
  else
    {
      /* Properties didn't change: copy  LAST_PROPS to current POOL. */
      props = FUNC11(sb->last_props, sb->iterpool);
      prop_diffs = FUNC1(sb->iterpool, 0, sizeof(svn_prop_t));
    }

  /* Check if the contents *may* have changed. */
  if (! sb->last_root)
    {
      /* Special case: In the first revision, we always provide a delta. */
      contents_changed = TRUE;
    }
  else if (sb->include_merged_revisions
           && FUNC2(sb->last_path, path_rev->path))
    {
      /* ### This is a HACK!!!
       * Blame -g, in older clients anyways, relies on getting a notification
       * whenever the path changes - even if there was no content change.
       *
       * TODO: A future release should take an extra parameter and depending
       * on that either always send a text delta or only send it if there
       * is a difference. */
      contents_changed = TRUE;
    }
  else
    {
      /* Did the file contents actually change?
       * It could e.g. be a property-only change. */
      FUNC0(FUNC3(&contents_changed, sb->last_root,
                                        sb->last_path, root, path_rev->path,
                                        sb->iterpool));
    }

  /* We have all we need, give to the handler. */
  FUNC0(handler(handler_baton, path_rev->path, path_rev->revnum,
                  rev_props, path_rev->merged,
                  contents_changed ? &delta_handler : NULL,
                  contents_changed ? &delta_baton : NULL,
                  prop_diffs, sb->iterpool));

  /* Compute and send delta if client asked for it.
     Note that this was initialized to NULL, so if !contents_changed,
     no deltas will be computed. */
  if (delta_handler && delta_handler != svn_delta_noop_window_handler)
    {
      /* Get the content delta. */
      FUNC0(FUNC4(&delta_stream,
                                           sb->last_root, sb->last_path,
                                           root, path_rev->path,
                                           sb->iterpool));
      /* And send. */
      FUNC0(FUNC12(delta_stream,
                                        delta_handler, delta_baton,
                                        sb->iterpool));
    }

  /* Remember root, path and props for next iteration. */
  sb->last_root = root;
  sb->last_path = path_rev->path;
  sb->last_props = props;

  /* Swap the pools. */
  tmp_pool = sb->iterpool;
  sb->iterpool = sb->last_pool;
  sb->last_pool = tmp_pool;

  return SVN_NO_ERROR;
}