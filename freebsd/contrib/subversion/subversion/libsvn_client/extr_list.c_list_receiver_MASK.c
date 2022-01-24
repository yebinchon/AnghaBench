#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_dirent_t ;
struct TYPE_4__ {int /*<<< orphan*/  fs_base_path; int /*<<< orphan*/  list_baton; int /*<<< orphan*/  (* list_func ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;TYPE_1__* ctx; scalar_t__ locks; } ;
typedef  TYPE_2__ receiver_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  (* cancel_func ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const char *rel_path,
              svn_dirent_t *dirent,
              void *baton,
              apr_pool_t *pool)
{
  receiver_baton_t *b = baton;
  const svn_lock_t *lock = NULL;

  /* We only report the path relative to the start path. */
  rel_path = FUNC4(b->fs_base_path, rel_path);

  if (b->locks)
    {
      const char *abs_path = FUNC3(b->fs_base_path, rel_path, pool);
      lock = FUNC5(b->locks, abs_path);
    }

  if (b->ctx->cancel_func)
    FUNC0(b->ctx->cancel_func(b->ctx->cancel_baton));

  FUNC0(b->list_func(b->list_baton, rel_path, dirent, lock,
                       b->fs_base_path, NULL, NULL, pool));

  return SVN_NO_ERROR;
}