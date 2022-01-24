#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_16__ {int /*<<< orphan*/ * (* cb_move ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  baton; TYPE_1__ funcs; } ;
typedef  TYPE_2__ svn_editor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 

svn_error_t *
FUNC18(svn_editor_t *editor,
                const char *src_relpath,
                svn_revnum_t src_revision,
                const char *dst_relpath,
                svn_revnum_t replaces_rev)
{
  svn_error_t *err = SVN_NO_ERROR;

  FUNC11(FUNC17(src_relpath));
  FUNC11(FUNC17(dst_relpath));
  FUNC8(editor);
  FUNC7(editor, src_relpath);
  FUNC6(editor, dst_relpath);
  FUNC12(editor, src_relpath);
  FUNC0(editor, src_relpath);
  FUNC12(editor, dst_relpath);

  FUNC10(FUNC13(editor));

  if (editor->funcs.cb_move)
    {
      FUNC9(editor);
      err = editor->funcs.cb_move(editor->baton, src_relpath, src_revision,
                                  dst_relpath, replaces_rev,
                                  editor->scratch_pool);
      FUNC2(editor);
    }

  FUNC3(editor, src_relpath);
  FUNC5(editor, src_relpath);
  FUNC4(editor, dst_relpath);
  FUNC5(editor, dst_relpath);
  FUNC1(editor, dst_relpath);

  FUNC16(editor->scratch_pool);
  return FUNC15(err);
}