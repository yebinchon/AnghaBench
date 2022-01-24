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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  pool; TYPE_3__* commit_ctx; int /*<<< orphan*/  working_url; int /*<<< orphan*/  base_revision; int /*<<< orphan*/  relpath; TYPE_2__* parent_dir; } ;
typedef  TYPE_1__ file_context_t ;
struct TYPE_6__ {struct TYPE_6__* parent_dir; int /*<<< orphan*/  relpath; int /*<<< orphan*/  working_url; scalar_t__ added; } ;
typedef  TYPE_2__ dir_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {int /*<<< orphan*/  session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(file_context_t *file,
              apr_pool_t *scratch_pool)
{
  dir_context_t *parent_dir = file->parent_dir;
  const char *checkout_url;

  /* Is one of our parent dirs newly added?  If so, we're already
   * implicitly checked out.
   */
  while (parent_dir)
    {
      if (parent_dir->added)
        {
          /* Implicitly checkout this file now. */
          FUNC1(parent_dir->working_url);
          file->working_url = FUNC5(
                                    parent_dir->working_url,
                                    FUNC6(
                                      parent_dir->relpath, file->relpath),
                                    file->pool);
          return SVN_NO_ERROR;
        }
      parent_dir = parent_dir->parent_dir;
    }

  FUNC0(FUNC2(&checkout_url,
                          file->commit_ctx->session,
                          file->relpath, file->base_revision,
                          NULL, scratch_pool, scratch_pool));

  /* Checkout our file into the activity URL now. */
  return FUNC4(FUNC3(&file->working_url,
                                             file->commit_ctx, checkout_url,
                                              file->pool, scratch_pool));
}