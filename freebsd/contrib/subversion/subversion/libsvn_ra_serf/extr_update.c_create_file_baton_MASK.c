#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {TYPE_2__* cur_file; int /*<<< orphan*/  switched_paths; TYPE_3__* cur_dir; } ;
typedef  TYPE_1__ report_context_t ;
struct TYPE_8__ {void* copyfrom_rev; void* base_rev; void* repos_relpath; void* relpath; int /*<<< orphan*/  base_name; TYPE_3__* parent_dir; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_2__ file_baton_t ;
struct TYPE_9__ {int /*<<< orphan*/  repos_relpath; int /*<<< orphan*/  relpath; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ dir_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(file_baton_t **new_file,
                  report_context_t *ctx,
                  const char *name,
                  apr_pool_t *scratch_pool)
{
  dir_baton_t *parent = ctx->cur_dir;
  apr_pool_t *file_pool;
  file_baton_t *file;

  file_pool = FUNC2(parent->pool);

  file = FUNC0(file_pool, sizeof(*file));
  file->pool = file_pool;

  file->parent_dir = parent;
  parent->ref_count++;

  file->relpath = FUNC4(parent->relpath, name, file_pool);
  file->base_name = FUNC3(file->relpath, NULL);

  file->repos_relpath = FUNC1(ctx->switched_paths, file->relpath);
  if (!file->repos_relpath)
    file->repos_relpath = FUNC4(parent->repos_relpath, name,
                                           file_pool);

  /* Sane defaults */
  file->base_rev = SVN_INVALID_REVNUM;
  file->copyfrom_rev = SVN_INVALID_REVNUM;

  *new_file = file;

  ctx->cur_file = file;

  return SVN_NO_ERROR;
}