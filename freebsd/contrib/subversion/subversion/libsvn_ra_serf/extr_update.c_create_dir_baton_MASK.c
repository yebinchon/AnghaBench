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
struct TYPE_8__ {TYPE_3__* cur_dir; TYPE_1__* sess; int /*<<< orphan*/  switched_paths; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_2__ report_context_t ;
struct TYPE_9__ {int ref_count; void* copyfrom_rev; void* base_rev; void* repos_relpath; void* relpath; int /*<<< orphan*/  base_name; struct TYPE_9__* parent_dir; TYPE_2__* ctx; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_3__ dir_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {int /*<<< orphan*/  session_url_str; int /*<<< orphan*/  repos_root_str; } ;

/* Variables and functions */
 void* SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (void*,char const*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(dir_baton_t **new_dir,
                 report_context_t *ctx,
                 const char *name,
                 apr_pool_t *scratch_pool)
{
  dir_baton_t *parent = ctx->cur_dir;
  apr_pool_t *dir_pool;
  dir_baton_t *dir;

  if (parent)
    dir_pool = FUNC3(parent->pool);
  else
    dir_pool = FUNC3(ctx->pool);

  dir = FUNC0(dir_pool, sizeof(*dir));
  dir->pool = dir_pool;
  dir->ctx = ctx;

  if (parent)
    {
      dir->parent_dir = parent;
      parent->ref_count++;
    }

  dir->relpath = parent ? FUNC5(parent->relpath, name, dir_pool)
                        : FUNC1(dir_pool, name);
  dir->base_name = FUNC4(dir->relpath, NULL);

  dir->repos_relpath = FUNC2(ctx->switched_paths, dir->relpath);
  if (!dir->repos_relpath)
    {
      if (parent)
        dir->repos_relpath = FUNC5(parent->repos_relpath, name,
                                              dir_pool);
      else
        dir->repos_relpath = FUNC6(ctx->sess->repos_root_str,
                                                   ctx->sess->session_url_str,
                                                   dir_pool);
    }

  dir->base_rev = SVN_INVALID_REVNUM;
  dir->copyfrom_rev = SVN_INVALID_REVNUM;

  dir->ref_count = 1;

  ctx->cur_dir = dir;

  *new_dir = dir;
  return SVN_NO_ERROR;
}