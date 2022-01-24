#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {int /*<<< orphan*/ * (* cb_copy ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  baton; TYPE_1__ funcs; } ;
typedef  TYPE_2__ svn_editor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 

svn_error_t *
FUNC15(svn_editor_t *editor,
                const char *src_relpath,
                svn_revnum_t src_revision,
                const char *dst_relpath,
                svn_revnum_t replaces_rev)
{
  svn_error_t *err = SVN_NO_ERROR;

  FUNC8(FUNC14(src_relpath));
  FUNC8(FUNC14(dst_relpath));
  FUNC5(editor);
  FUNC4(editor, dst_relpath);
  FUNC9(editor, src_relpath);
  FUNC9(editor, dst_relpath);

  FUNC7(FUNC10(editor));

  if (editor->funcs.cb_copy)
    {
      FUNC6(editor);
      err = editor->funcs.cb_copy(editor->baton, src_relpath, src_revision,
                                  dst_relpath, replaces_rev,
                                  editor->scratch_pool);
      FUNC1(editor);
    }

  FUNC2(editor, dst_relpath);
  FUNC3(editor, dst_relpath);
  FUNC0(editor, dst_relpath);

  FUNC13(editor->scratch_pool);
  return FUNC12(err);
}