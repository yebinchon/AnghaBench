#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ev2_edit_baton {int /*<<< orphan*/  base_relpath; int /*<<< orphan*/  repos_root; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC3(struct ev2_edit_baton *eb,
                     const char *path_or_url,
                     apr_pool_t *result_pool)
{
  if (FUNC0(path_or_url))
    {
      return FUNC2(eb->repos_root, path_or_url, result_pool);
    }
  else
    {
      return FUNC1(eb->base_relpath,
                              path_or_url[0] == '/'
                                    ? path_or_url + 1 : path_or_url,
                              result_pool);
    }
}