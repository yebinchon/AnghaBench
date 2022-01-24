#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
struct TYPE_6__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  wc_queues; } ;
typedef  TYPE_2__ svn_wc_committed_queue_t ;
typedef  int /*<<< orphan*/  svn_wc__db_commit_queue_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC11(svn_wc_committed_queue_t *queue,
                        svn_wc_context_t *wc_ctx,
                        const char *local_abspath,
                        svn_boolean_t recurse,
                        svn_boolean_t is_committed,
                        const apr_array_header_t *wcprop_changes,
                        svn_boolean_t remove_lock,
                        svn_boolean_t remove_changelist,
                        const svn_checksum_t *sha1_checksum,
                        apr_pool_t *scratch_pool)
{
  const char *wcroot_abspath;
  svn_wc__db_commit_queue_t *db_queue;

  FUNC1(FUNC3(local_abspath));

  /* Use the same pool as the one QUEUE was allocated in,
     to prevent lifetime issues.  Intermediate operations
     should use SCRATCH_POOL. */

  FUNC0(FUNC9(&wcroot_abspath,
                                wc_ctx->db, local_abspath,
                                scratch_pool, scratch_pool));

  db_queue = FUNC5(queue->wc_queues, wcroot_abspath);
  if (! db_queue)
    {
      wcroot_abspath = FUNC2(queue->pool, wcroot_abspath);

      FUNC0(FUNC8(&db_queue,
                                             wc_ctx->db, wcroot_abspath,
                                             queue->pool, scratch_pool));

      FUNC6(queue->wc_queues, wcroot_abspath, db_queue);
    }

  return FUNC4(
          FUNC7(db_queue, local_abspath, recurse,
                                      is_committed, remove_lock,
                                      remove_changelist, sha1_checksum,
                                      FUNC10(wcprop_changes,
                                                                 queue->pool),
                                      queue->pool, scratch_pool));
}