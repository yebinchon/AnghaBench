#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ to_sync_t ;
struct TYPE_5__ {int /*<<< orphan*/  files; } ;
typedef  TYPE_2__ svn_fs_x__batch_fsync_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static apr_status_t
FUNC5(void *data)
{
  svn_fs_x__batch_fsync_t *batch = data;
  apr_hash_index_t *hi;

  /* Close all files (implicitly) and release memory. */
  for (hi = FUNC0(FUNC2(batch->files), batch->files);
       hi;
       hi = FUNC1(hi))
    {
      to_sync_t *to_sync = FUNC3(hi);
      FUNC4(to_sync->pool);
    }

  return APR_SUCCESS;
}