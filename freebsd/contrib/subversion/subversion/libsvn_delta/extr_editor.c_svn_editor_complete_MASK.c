#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/ * (* cb_complete ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  baton; TYPE_1__ funcs; int /*<<< orphan*/  pending_incomplete_children; } ;
typedef  TYPE_2__ svn_editor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC9(svn_editor_t *editor)
{
  svn_error_t *err = SVN_NO_ERROR;

  FUNC2(editor);
#ifdef ENABLE_ORDERING_CHECK
  SVN_ERR_ASSERT(apr_hash_count(editor->pending_incomplete_children) == 0);
#endif

  if (editor->funcs.cb_complete)
    {
      FUNC3(editor);
      err = editor->funcs.cb_complete(editor->baton, editor->scratch_pool);
      FUNC0(editor);
    }

  FUNC1(editor);

  FUNC8(editor->scratch_pool);
  return FUNC7(err);
}