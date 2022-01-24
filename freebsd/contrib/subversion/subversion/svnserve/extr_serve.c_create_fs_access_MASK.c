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
typedef  int /*<<< orphan*/  svn_fs_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct cleanup_fs_access_baton {int /*<<< orphan*/  fs; int /*<<< orphan*/ * pool; } ;
struct TYPE_7__ {TYPE_2__* repository; TYPE_1__* client_info; } ;
typedef  TYPE_3__ server_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  fs; } ;
struct TYPE_5__ {int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct cleanup_fs_access_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cleanup_fs_access_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup_fs_access ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(server_baton_t *b, apr_pool_t *pool)
{
  svn_fs_access_t *fs_access;
  struct cleanup_fs_access_baton *cleanup_baton;

  if (!b->client_info->user)
    return SVN_NO_ERROR;

  FUNC0(FUNC3(&fs_access, b->client_info->user, pool));
  FUNC0(FUNC4(b->repository->fs, fs_access));

  cleanup_baton = FUNC1(pool, sizeof(*cleanup_baton));
  cleanup_baton->pool = pool;
  cleanup_baton->fs = b->repository->fs;
  FUNC2(pool, cleanup_baton, cleanup_fs_access,
                            apr_pool_cleanup_null);

  return SVN_NO_ERROR;
}