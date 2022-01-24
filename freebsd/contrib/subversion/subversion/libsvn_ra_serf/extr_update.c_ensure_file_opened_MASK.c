#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* add_file ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* open_file ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ svn_delta_editor_t ;
struct TYPE_8__ {scalar_t__ file_opened; int /*<<< orphan*/  file_baton; int /*<<< orphan*/  pool; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/  copyfrom_path; TYPE_5__* parent_dir; int /*<<< orphan*/  relpath; int /*<<< orphan*/  base_rev; } ;
typedef  TYPE_3__ file_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  dir_baton; TYPE_1__* ctx; } ;
struct TYPE_6__ {TYPE_2__* editor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(file_baton_t *file,
                   apr_pool_t *scratch_pool)
{
  const svn_delta_editor_t *editor = file->parent_dir->ctx->editor;

  if (file->file_opened)
    return SVN_NO_ERROR;

  /* Ensure our parent is open. */
  FUNC0(FUNC2(file->parent_dir, scratch_pool));

  /* Open (or add) the file. */
  if (FUNC1(file->base_rev))
    {
      FUNC0(editor->open_file(file->relpath,
                                file->parent_dir->dir_baton,
                                file->base_rev,
                                file->pool,
                                &file->file_baton));
    }
  else
    {
      FUNC0(editor->add_file(file->relpath,
                               file->parent_dir->dir_baton,
                               file->copyfrom_path,
                               file->copyfrom_rev,
                               file->pool,
                               &file->file_baton));
    }

  file->file_opened = TRUE;

  return SVN_NO_ERROR;
}