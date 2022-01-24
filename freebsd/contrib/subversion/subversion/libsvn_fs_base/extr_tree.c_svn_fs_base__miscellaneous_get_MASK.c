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
typedef  int /*<<< orphan*/  svn_error_t ;
struct miscellaneous_get_args {char const* key; char const** val; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct miscellaneous_get_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_miscellaneous_get ; 

svn_error_t *
FUNC5(const char **val,
                               svn_fs_t *fs,
                               const char *key,
                               apr_pool_t *pool)
{
  struct miscellaneous_get_args mga;
  apr_pool_t *scratch_pool = FUNC3(pool);

  mga.key = key;
  mga.val = val;
  FUNC0(FUNC2(fs, txn_body_miscellaneous_get, &mga,
                                 FALSE, scratch_pool));
  if (*val)
    *val = FUNC1(pool, *val);
  FUNC4(scratch_pool);
  return SVN_NO_ERROR;
}