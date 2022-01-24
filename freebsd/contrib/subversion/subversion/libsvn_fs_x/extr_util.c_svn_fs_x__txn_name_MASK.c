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
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_INT64_BUFFER_SIZE ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

const char *
FUNC2(svn_fs_x__txn_id_t txn_id,
                   apr_pool_t *result_pool)
{
  char *p = FUNC0(result_pool, SVN_INT64_BUFFER_SIZE);
  FUNC1(p, txn_id);
  return p;
}