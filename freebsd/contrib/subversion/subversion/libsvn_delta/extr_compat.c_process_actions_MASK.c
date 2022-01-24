#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct ev2_edit_baton {int /*<<< orphan*/  editor; int /*<<< orphan*/  unlock_baton; int /*<<< orphan*/  (* do_unlock ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ;} ;
struct change_node {scalar_t__ action; scalar_t__ kind; int /*<<< orphan*/  changing; int /*<<< orphan*/ * contents_abspath; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/ * copyfrom_path; int /*<<< orphan*/  deleting; int /*<<< orphan*/ * props; scalar_t__ contents_changed; scalar_t__ unlock; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 scalar_t__ RESTRUCTURE_ADD ; 
 scalar_t__ RESTRUCTURE_ADD_ABSENT ; 
 scalar_t__ RESTRUCTURE_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct ev2_edit_baton*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC17(struct ev2_edit_baton *eb,
                const char *repos_relpath,
                const struct change_node *change,
                apr_pool_t *scratch_pool)
{
  apr_hash_t *props = NULL;
  svn_stream_t *contents = NULL;
  svn_checksum_t *checksum = NULL;
  svn_node_kind_t kind = svn_node_unknown;

  FUNC1(change != NULL);

  if (change->unlock)
    FUNC0(eb->do_unlock(eb->unlock_baton, repos_relpath, scratch_pool));

  if (change->action == RESTRUCTURE_DELETE)
    {
      /* If the action was left as RESTRUCTURE_DELETE, then a
         replacement is not occurring. Just do the delete and bail.  */
      FUNC0(FUNC13(eb->editor, repos_relpath,
                                change->deleting));

      /* No further work possible on this node.  */
      return SVN_NO_ERROR;
    }
  if (change->action == RESTRUCTURE_ADD_ABSENT)
    {
      FUNC0(FUNC7(eb->editor, repos_relpath,
                                    change->kind, change->deleting));

      /* No further work possible on this node.  */
      return SVN_NO_ERROR;
    }

  if (change->contents_changed)
    {
      /* We can only set text on files. */
      /* ### validate we aren't overwriting KIND?  */
      kind = svn_node_file;

      if (change->contents_abspath)
        {
          /* ### the checksum might be in CHANGE->CHECKSUM  */
          FUNC0(FUNC14(&checksum, change->contents_abspath,
                                        svn_checksum_sha1, scratch_pool));
          FUNC0(FUNC16(&contents, change->contents_abspath,
                                           scratch_pool, scratch_pool));
        }
      else
        {
          contents = FUNC15(scratch_pool);
          checksum = FUNC6(svn_checksum_sha1,
                                                 scratch_pool);
        }
    }

  if (change->props != NULL)
    {
      /* ### validate we aren't overwriting KIND?  */
      kind = change->kind;
      props = change->props;
    }

  if (change->action == RESTRUCTURE_ADD)
    {
      /* An add might be a replace. Grab the revnum we're replacing.  */
      svn_revnum_t replaces_rev = change->deleting;

      kind = change->kind;

      if (change->copyfrom_path != NULL)
        {
          FUNC0(FUNC12(eb->editor, change->copyfrom_path,
                                  change->copyfrom_rev,
                                  repos_relpath, replaces_rev));
          /* Fall through to possibly make changes post-copy.  */
        }
      else
        {
          /* If no properties were defined, then use an empty set.  */
          if (props == NULL)
            props = FUNC3(scratch_pool);

          if (kind == svn_node_dir)
            {
              const apr_array_header_t *children;

              children = FUNC4(eb, repos_relpath, scratch_pool);
              FUNC0(FUNC8(eb->editor, repos_relpath,
                                               children, props,
                                               replaces_rev));
            }
          else
            {
              /* If this file was added, but apply_txdelta() was not
                 called (i.e., CONTENTS_CHANGED is FALSE), then we're adding
                 an empty file.  */
              if (change->contents_abspath == NULL)
                {
                  contents = FUNC15(scratch_pool);
                  checksum = FUNC6(svn_checksum_sha1,
                                                         scratch_pool);
                }

              FUNC0(FUNC9(eb->editor, repos_relpath,
                                          checksum, contents, props,
                                          replaces_rev));
            }

          /* No further work possible on this node.  */
          return SVN_NO_ERROR;
        }
    }

#if 0
  /* There *should* be work for this node. But it seems that isn't true
     in some cases. Future investigation...  */
  SVN_ERR_ASSERT(props || contents);
#endif
  if (props || contents)
    {
      /* Changes to properties or content should have indicated the revision
         it was intending to change.

         Oop. Not true. The node may be locally-added.  */
#if 0
      SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(change->changing));
#endif

      /* ### we need to gather up the target set of children  */

      if (kind == svn_node_dir)
        FUNC0(FUNC10(eb->editor, repos_relpath,
                                           change->changing, NULL, props));
      else
        FUNC0(FUNC11(eb->editor, repos_relpath,
                                      change->changing,
                                      checksum, contents, props));
    }

  return SVN_NO_ERROR;
}