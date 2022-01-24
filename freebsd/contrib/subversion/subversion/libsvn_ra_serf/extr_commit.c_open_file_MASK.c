#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  working_url; int /*<<< orphan*/  url; int /*<<< orphan*/ * pool; int /*<<< orphan*/  prop_changes; int /*<<< orphan*/  base_revision; int /*<<< orphan*/  added; int /*<<< orphan*/  relpath; int /*<<< orphan*/  name; TYPE_5__* commit_ctx; TYPE_2__* parent_dir; } ;
typedef  TYPE_1__ file_context_t ;
struct TYPE_7__ {TYPE_5__* commit_ctx; } ;
typedef  TYPE_2__ dir_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {int /*<<< orphan*/  txn_root_url; int /*<<< orphan*/  open_batons; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const char *path,
          void *parent_baton,
          svn_revnum_t base_revision,
          apr_pool_t *file_pool,
          void **file_baton)
{
  dir_context_t *parent = parent_baton;
  file_context_t *new_file;

  new_file = FUNC3(file_pool, sizeof(*new_file));
  new_file->pool = file_pool;

  new_file->parent_dir = parent;
  new_file->commit_ctx = parent->commit_ctx;
  new_file->relpath = FUNC4(new_file->pool, path);
  new_file->name = FUNC7(new_file->relpath, NULL);
  new_file->added = FALSE;
  new_file->base_revision = base_revision;
  new_file->prop_changes = FUNC2(new_file->pool);

  parent->commit_ctx->open_batons++;

  if (FUNC1(parent->commit_ctx))
    {
      new_file->url = FUNC6(parent->commit_ctx->txn_root_url,
                                                  path, new_file->pool);
    }
  else
    {
      /* CHECKOUT the file into our activity. */
      FUNC0(FUNC5(new_file, new_file->pool /* scratch_pool */));

      new_file->url = new_file->working_url;
    }

  *file_baton = new_file;

  return SVN_NO_ERROR;
}