#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_17__ {int /*<<< orphan*/ * (* cb_add_file ) (int /*<<< orphan*/ ,char const*,TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  baton; TYPE_1__ funcs; } ;
typedef  TYPE_2__ svn_editor_t ;
struct TYPE_19__ {scalar_t__ kind; } ;
typedef  TYPE_3__ svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ SVN_EDITOR_CHECKSUM_KIND ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char const*,TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (char const*) ; 

svn_error_t *
FUNC16(svn_editor_t *editor,
                    const char *relpath,
                    const svn_checksum_t *checksum,
                    svn_stream_t *contents,
                    apr_hash_t *props,
                    svn_revnum_t replaces_rev)
{
  svn_error_t *err = SVN_NO_ERROR;

  FUNC9(FUNC15(relpath));
  FUNC9(checksum != NULL
                    && checksum->kind == SVN_EDITOR_CHECKSUM_KIND);
  FUNC9(contents != NULL);
  FUNC9(props != NULL);
  FUNC6(editor);
  FUNC5(editor, relpath);
  FUNC10(editor, relpath);
  FUNC0(editor, relpath);

  FUNC8(FUNC11(editor));

  if (editor->funcs.cb_add_file)
    {
      FUNC7(editor);
      err = editor->funcs.cb_add_file(editor->baton, relpath,
                                      checksum, contents, props,
                                      replaces_rev, editor->scratch_pool);
      FUNC2(editor);
    }

  FUNC3(editor, relpath);
  FUNC4(editor, relpath);
  FUNC1(editor, relpath);

  FUNC14(editor->scratch_pool);
  return FUNC13(err);
}