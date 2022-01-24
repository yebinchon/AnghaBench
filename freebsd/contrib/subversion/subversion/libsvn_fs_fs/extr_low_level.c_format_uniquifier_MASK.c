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
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int SVN_INT64_BUFFER_SIZE ; 
 char const* FUNC0 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC3(const svn_fs_fs__id_part_t *noderev_txn_id,
                  apr_uint64_t number,
                  apr_pool_t *pool)
{
  char buf[SVN_INT64_BUFFER_SIZE];
  const char *txn_id_str;

  txn_id_str = FUNC2(noderev_txn_id, pool);
  FUNC1(buf, number);

  return FUNC0(pool, "%s/_%s", txn_id_str, buf);
}