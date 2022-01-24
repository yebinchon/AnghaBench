#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* close_edit ) (void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* close_directory ) (void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* open_root ) (void*,scalar_t__,int /*<<< orphan*/ ,void**) ;} ;
typedef  TYPE_3__ svn_delta_editor_t ;
struct revision_baton {scalar_t__ rev; int rev_offset; int /*<<< orphan*/  pool; int /*<<< orphan*/  author; TYPE_2__* pb; int /*<<< orphan*/  datestamp; int /*<<< orphan*/  revprop_table; TYPE_1__* db; } ;
struct TYPE_6__ {int /*<<< orphan*/  session; int /*<<< orphan*/  skip_revprops; int /*<<< orphan*/  rev_map; int /*<<< orphan*/  quiet; void* commit_edit_baton; TYPE_3__* commit_editor; } ;
struct TYPE_5__ {void* baton; struct TYPE_5__* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_AUTHOR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_DATE ; 
 int /*<<< orphan*/  commit_callback ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,scalar_t__,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_3__ const**,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC15(void *baton)
{
  struct revision_baton *rb = baton;
  const svn_delta_editor_t *commit_editor = rb->pb->commit_editor;
  void *commit_edit_baton = rb->pb->commit_edit_baton;
  svn_revnum_t committed_rev = SVN_INVALID_REVNUM;

  /* Fake revision 0 */
  if (rb->rev == 0)
    {
      /* ### Don't print directly; generate a notification. */
      if (! rb->pb->quiet)
        FUNC0(FUNC9(rb->pool, "* Loaded revision 0.\n"));
    }
  else if (commit_editor)
    {
      /* Close all pending open directories, and then close the edit
         session itself */
      while (rb->db && rb->db->parent)
        {
          FUNC0(commit_editor->close_directory(rb->db->baton, rb->pool));
          rb->db = rb->db->parent;
        }
      /* root dir's baton */
      FUNC0(commit_editor->close_directory(rb->db->baton, rb->pool));
      FUNC0(commit_editor->close_edit(commit_edit_baton, rb->pool));
    }
  else
    {
      svn_revnum_t head_rev_before_commit = rb->rev - rb->rev_offset - 1;
      void *child_baton;

      /* Legitimate revision with no node information */
      FUNC0(FUNC13(rb->pb->session, &commit_editor,
                                        &commit_edit_baton, rb->revprop_table,
                                        commit_callback, baton,
                                        NULL, FALSE, rb->pool));

      FUNC0(commit_editor->open_root(commit_edit_baton,
                                       head_rev_before_commit,
                                       rb->pool, &child_baton));

      FUNC0(commit_editor->close_directory(child_baton, rb->pool));
      FUNC0(commit_editor->close_edit(commit_edit_baton, rb->pool));
    }

  /* svn_fs_commit_txn() rewrites the datestamp and author properties;
     we'll rewrite them again by hand after closing the commit_editor.
     The only time we don't do this is for revision 0 when loaded into
     a non-empty repository.  */
  if (rb->rev > 0)
    {
      committed_rev = FUNC2(rb->pb->rev_map, rb->rev);
    }
  else if (rb->rev_offset == -1)
    {
      committed_rev = 0;
    }

  if (FUNC1(committed_rev))
    {
      if (!FUNC10(rb->pb->skip_revprops, SVN_PROP_REVISION_DATE))
        {
          FUNC0(FUNC14(SVN_PROP_REVISION_DATE,
                                           rb->datestamp, rb->pool));
          FUNC0(FUNC12(rb->pb->session, committed_rev,
                                          SVN_PROP_REVISION_DATE,
                                          NULL, rb->datestamp, rb->pool));
        }
      if (!FUNC10(rb->pb->skip_revprops, SVN_PROP_REVISION_AUTHOR))
        {
          FUNC0(FUNC14(SVN_PROP_REVISION_AUTHOR,
                                           rb->author, rb->pool));
          FUNC0(FUNC12(rb->pb->session, committed_rev,
                                          SVN_PROP_REVISION_AUTHOR,
                                          NULL, rb->author, rb->pool));
        }
    }

  FUNC11(rb->pool);

  return SVN_NO_ERROR;
}