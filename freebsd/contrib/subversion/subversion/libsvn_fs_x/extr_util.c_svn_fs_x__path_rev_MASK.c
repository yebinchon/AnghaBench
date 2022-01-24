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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVN_INT64_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

const char *
FUNC4(svn_fs_t *fs,
                   svn_revnum_t rev,
                   apr_pool_t *result_pool)
{
  char buffer[SVN_INT64_BUFFER_SIZE + 1];
  buffer[0] = 'r';
  FUNC2(buffer + 1, rev);

  FUNC0(! FUNC3(fs, rev));
  return FUNC1(fs, rev, FALSE, buffer, result_pool);
}