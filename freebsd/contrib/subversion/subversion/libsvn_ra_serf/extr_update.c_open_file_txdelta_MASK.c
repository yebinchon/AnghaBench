#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* apply_textdelta ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ svn_delta_editor_t ;
struct TYPE_10__ {int /*<<< orphan*/  txdelta_baton; int /*<<< orphan*/ * txdelta; int /*<<< orphan*/  pool; int /*<<< orphan*/  base_md5_checksum; int /*<<< orphan*/  file_baton; TYPE_2__* parent_dir; } ;
typedef  TYPE_4__ file_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {TYPE_1__* ctx; } ;
struct TYPE_7__ {TYPE_3__* editor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(file_baton_t *file,
                  apr_pool_t *scratch_pool)
{
  const svn_delta_editor_t *editor = file->parent_dir->ctx->editor;

  FUNC1(file->txdelta == NULL);

  FUNC0(FUNC2(file, scratch_pool));

  /* Get (maybe) a textdelta window handler for transmitting file
     content changes. */
  FUNC0(editor->apply_textdelta(file->file_baton,
                                  FUNC4(
                                                  file->base_md5_checksum,
                                                  scratch_pool),
                                  file->pool,
                                  &file->txdelta,
                                  &file->txdelta_baton));

  return SVN_NO_ERROR;
}