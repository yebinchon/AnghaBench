#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {TYPE_1__* editor; } ;
typedef  TYPE_2__ report_context_t ;
struct TYPE_8__ {int /*<<< orphan*/ * pool; int /*<<< orphan*/  dir_baton; TYPE_2__* ctx; int /*<<< orphan*/  remove_props; scalar_t__ ref_count; struct TYPE_8__* parent_dir; } ;
typedef  TYPE_3__ dir_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* close_directory ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* change_file_prop ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(dir_baton_t *dir)
{
  apr_pool_t *scratch_pool = dir->pool;
  dir_baton_t *parent = dir->parent_dir;
  report_context_t *ctx = dir->ctx;

  if (--dir->ref_count)
    {
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC4(dir, dir->pool));

  if (dir->remove_props)
    {
      apr_hash_index_t *hi;

      for (hi = FUNC1(scratch_pool, dir->remove_props);
           hi;
           hi = FUNC2(hi))
        {
          FUNC0(ctx->editor->change_file_prop(dir->dir_baton,
                                                FUNC3(hi),
                                                NULL /* value */,
                                                scratch_pool));
        }
    }

  FUNC0(dir->ctx->editor->close_directory(dir->dir_baton, scratch_pool));

  FUNC8(dir->pool /* scratch_pool */);

  if (parent)
    return FUNC7(FUNC9(parent));
  else
    return SVN_NO_ERROR;
}