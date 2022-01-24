#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_7__ {int /*<<< orphan*/  mtime; int /*<<< orphan*/  filesize; } ;
typedef  TYPE_2__ svn_io_dirent2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_wc__db_wcroot_t *wcroot,
          apr_hash_t *record_map,
          apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = FUNC8(scratch_pool);

  for (hi = FUNC1(scratch_pool, record_map); hi;
       hi = FUNC2(hi))
    {
      const char *local_abspath = FUNC3(hi);
      const svn_io_dirent2_t *dirent = FUNC4(hi);
      const char *local_relpath = FUNC6(wcroot->abspath,
                                                           local_abspath);

      FUNC7(iterpool);

      if (! local_relpath)
        continue;

      FUNC0(FUNC5(wcroot, local_relpath,
                                 dirent->filesize, dirent->mtime,
                                 iterpool));
    }

  FUNC9(iterpool);
  return SVN_NO_ERROR;
}