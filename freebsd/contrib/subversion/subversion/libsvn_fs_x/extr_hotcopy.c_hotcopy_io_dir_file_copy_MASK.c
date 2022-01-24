#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ kind; scalar_t__ special; scalar_t__ filesize; scalar_t__ mtime; } ;
typedef  TYPE_1__ svn_io_dirent2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_boolean_t *skipped_p,
                         const char *src_path,
                         const char *dst_path,
                         const char *file,
                         apr_pool_t *scratch_pool)
{
  const svn_io_dirent2_t *src_dirent;
  const svn_io_dirent2_t *dst_dirent;
  const char *src_target;
  const char *dst_target;

  /* Does the destination already exist? If not, we must copy it. */
  dst_target = FUNC1(dst_path, file, scratch_pool);
  FUNC0(FUNC4(&dst_dirent, dst_target, FALSE, TRUE,
                              scratch_pool, scratch_pool));
  if (dst_dirent->kind != svn_node_none)
    {
      /* If the destination's stat information indicates that the file
       * is equal to the source, don't bother copying the file again. */
      src_target = FUNC1(src_path, file, scratch_pool);
      FUNC0(FUNC4(&src_dirent, src_target, FALSE, FALSE,
                                  scratch_pool, scratch_pool));
      if (src_dirent->kind == dst_dirent->kind &&
          src_dirent->special == dst_dirent->special &&
          src_dirent->filesize == dst_dirent->filesize &&
          src_dirent->mtime <= dst_dirent->mtime)
        return SVN_NO_ERROR;
    }

  if (skipped_p)
    *skipped_p = FALSE;

  return FUNC2(FUNC3(src_path, dst_path, file,
                                              scratch_pool));
}