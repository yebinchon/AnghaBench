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
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char const* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC2(const svn_fs_fs__id_part_t *txn_id,
                      const char *to_add,
                      apr_pool_t *pool)
{
  return FUNC0(pool, FUNC1(txn_id, pool),
                     to_add, SVN_VA_NULL);
}