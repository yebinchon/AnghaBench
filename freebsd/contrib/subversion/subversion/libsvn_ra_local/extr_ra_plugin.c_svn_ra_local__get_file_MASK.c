#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_8__ {TYPE_4__* priv; } ;
typedef  TYPE_3__ svn_ra_session_t ;
struct TYPE_9__ {int /*<<< orphan*/  uuid; int /*<<< orphan*/  callback_baton; TYPE_2__* callbacks; int /*<<< orphan*/  fs; TYPE_1__* fs_path; } ;
typedef  TYPE_4__ svn_ra_local__session_baton_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_7__ {int /*<<< orphan*/ * cancel_func; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FILE ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_ra_session_t *session,
                       const char *path,
                       svn_revnum_t revision,
                       svn_stream_t *stream,
                       svn_revnum_t *fetched_rev,
                       apr_hash_t **props,
                       apr_pool_t *pool)
{
  svn_fs_root_t *root;
  svn_stream_t *contents;
  svn_revnum_t youngest_rev;
  svn_ra_local__session_baton_t *sess = session->priv;
  const char *abs_path = FUNC9(sess->fs_path->data, path, pool);
  svn_node_kind_t node_kind;

  /* Open the revision's root. */
  if (! FUNC1(revision))
    {
      FUNC0(FUNC8(&youngest_rev, sess->fs, pool));
      FUNC0(FUNC7(&root, sess->fs, youngest_rev, pool));
      if (fetched_rev != NULL)
        *fetched_rev = youngest_rev;
    }
  else
    FUNC0(FUNC7(&root, sess->fs, revision, pool));

  FUNC0(FUNC5(&node_kind, root, abs_path, pool));
  if (node_kind == svn_node_none)
    {
      return FUNC4(SVN_ERR_FS_NOT_FOUND, NULL,
                               FUNC2("'%s' path not found"), abs_path);
    }
  else if (node_kind != svn_node_file)
    {
      return FUNC4(SVN_ERR_FS_NOT_FILE, NULL,
                               FUNC2("'%s' is not a file"), abs_path);
    }

  if (stream)
    {
      /* Get a stream representing the file's contents. */
      FUNC0(FUNC6(&contents, root, abs_path, pool));

      /* Now push data from the fs stream back at the caller's stream.
         Note that this particular RA layer does not computing a
         checksum as we go, and confirming it against the repository's
         checksum when done.  That's because it calls
         svn_fs_file_contents() directly, which already checks the
         stored checksum, and all we're doing here is writing bytes in
         a loop.  Truly, Nothing Can Go Wrong :-).  But RA layers that
         go over a network should confirm the checksum.

         Note: we are not supposed to close the passed-in stream, so
         disown the thing.
      */
      FUNC0(FUNC10(contents, FUNC11(stream, pool),
                               sess->callbacks
                                 ? sess->callbacks->cancel_func : NULL,
                               sess->callback_baton,
                               pool));
    }

  /* Handle props if requested. */
  if (props)
    FUNC0(FUNC3(props, root, abs_path, sess->uuid, pool, pool));

  return SVN_NO_ERROR;
}