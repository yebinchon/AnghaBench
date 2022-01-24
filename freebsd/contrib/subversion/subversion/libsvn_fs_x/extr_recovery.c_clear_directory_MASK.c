#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_dirent_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(const char *dir_path,
                apr_pool_t *scratch_pool)
{
  apr_hash_t *dirents;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = FUNC9(scratch_pool);

  FUNC0(FUNC5(&dirents, dir_path, TRUE, scratch_pool,
                              scratch_pool));

  for (hi = FUNC1(scratch_pool, dirents);
       hi;
       hi = FUNC2(hi))
    {
      const char *path;
      const char *name;
      svn_dirent_t *dirent;

      FUNC8(iterpool);
      FUNC3(hi, (const void **)&name, NULL, (void **)&dirent);

      path = FUNC4(dir_path, name, iterpool);
      if (dirent->kind == svn_node_dir)
        FUNC0(FUNC6(path, TRUE, NULL, NULL, iterpool));
      else
        FUNC0(FUNC7(path, TRUE, iterpool));
    }

  FUNC10(iterpool);

  return SVN_NO_ERROR;
}