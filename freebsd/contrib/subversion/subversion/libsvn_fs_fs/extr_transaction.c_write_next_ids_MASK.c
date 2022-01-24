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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_TRUNCATE ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_INT64_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_fs_t *fs,
               const svn_fs_fs__id_part_t *txn_id,
               apr_uint64_t node_id,
               apr_uint64_t copy_id,
               apr_pool_t *pool)
{
  apr_file_t *file;
  char buffer[2 * SVN_INT64_BUFFER_SIZE + 2];
  char *p = buffer;

  p += FUNC2(p, node_id);
  *(p++) = ' ';
  p += FUNC2(p, copy_id);
  *(p++) = '\n';
  *(p++) = '\0';

  FUNC0(FUNC4(&file,
                           FUNC1(fs, txn_id, pool),
                           APR_WRITE | APR_TRUNCATE,
                           APR_OS_DEFAULT, pool));
  FUNC0(FUNC5(file, buffer, p - buffer, NULL, pool));
  return FUNC3(file, pool);
}