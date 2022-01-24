#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* repository; } ;
typedef  TYPE_3__ server_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {TYPE_1__* fs_path; int /*<<< orphan*/  repos_url; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 char* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC4(void *baton,
                             const char *path,
                             apr_pool_t *pool)
{
  server_baton_t *sb = baton;

  if (FUNC2(path))
    {
      /* This is a copyfrom URL. */
      path = FUNC3(sb->repository->repos_url, path, pool);
      path = FUNC0(path, pool);
    }
  else
    {
      /* This is a base-relative path. */
      if ((path)[0] != '/')
        /* Get an absolute path for use in the FS. */
        path = FUNC1(sb->repository->fs_path->data, path, pool);
    }

  return path;
}