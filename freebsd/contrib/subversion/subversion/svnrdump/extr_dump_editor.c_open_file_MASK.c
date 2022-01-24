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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct file_baton {int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/  copyfrom_path; } ;
struct dir_baton {int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/  pool; int /*<<< orphan*/  copyfrom_path; int /*<<< orphan*/  eb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct file_baton* FUNC3 (char const*,struct dir_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const char *path,
          void *parent_baton,
          svn_revnum_t ancestor_revision,
          apr_pool_t *pool,
          void **file_baton)
{
  struct dir_baton *pb = parent_baton;
  struct file_baton *fb;

  FUNC1(FUNC2(pb->eb, pool));

  /* Make the file baton. */
  fb = FUNC3(path, pb, pool);

  /* If the parent directory has explicit copyfrom path and rev,
     record the same for this one. */
  if (FUNC0(pb->copyfrom_path, pb->copyfrom_rev))
    {
      fb->copyfrom_path = FUNC5(pb->copyfrom_path,
                                           FUNC4(path, NULL),
                                           pb->pool);
      fb->copyfrom_rev = pb->copyfrom_rev;
    }

  *file_baton = fb;
  return SVN_NO_ERROR;
}