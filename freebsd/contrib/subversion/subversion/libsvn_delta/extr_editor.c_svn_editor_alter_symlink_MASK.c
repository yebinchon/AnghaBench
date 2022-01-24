#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {int /*<<< orphan*/ * (* cb_alter_symlink ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  baton; TYPE_1__ funcs; } ;
typedef  TYPE_2__ svn_editor_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (char const*) ; 

svn_error_t *
FUNC14(svn_editor_t *editor,
                         const char *relpath,
                         svn_revnum_t revision,
                         const char *target,
                         apr_hash_t *props)
{
  svn_error_t *err = SVN_NO_ERROR;

  FUNC7(FUNC13(relpath));
  FUNC7(props != NULL || target != NULL);
  FUNC4(editor);
  FUNC3(editor, relpath);
  FUNC8(editor, relpath);

  FUNC6(FUNC9(editor));

  if (editor->funcs.cb_alter_symlink)
    {
      FUNC5(editor);
      err = editor->funcs.cb_alter_symlink(editor->baton,
                                           relpath, revision,
                                           target, props,
                                           editor->scratch_pool);
      FUNC0(editor);
    }

  FUNC1(editor, relpath);
  FUNC2(editor, relpath);

  FUNC12(editor->scratch_pool);
  return FUNC11(err);
}