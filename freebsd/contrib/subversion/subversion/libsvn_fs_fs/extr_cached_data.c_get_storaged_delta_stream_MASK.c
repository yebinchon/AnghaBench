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
typedef  int /*<<< orphan*/  svn_txdelta_stream_t ;
struct delta_read_baton {int /*<<< orphan*/  md5_digest; int /*<<< orphan*/ * rs; } ;
typedef  int /*<<< orphan*/  rep_state_t ;
struct TYPE_5__ {TYPE_1__* data_rep; } ;
typedef  TYPE_2__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_4__ {int /*<<< orphan*/  md5_digest; } ;

/* Variables and functions */
 struct delta_read_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  delta_read_md5_digest ; 
 int /*<<< orphan*/  delta_read_next_window ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct delta_read_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_txdelta_stream_t *
FUNC3(rep_state_t *rep_state,
                          node_revision_t *target,
                          apr_pool_t *pool)
{
  /* Create the delta read baton. */
  struct delta_read_baton *drb = FUNC0(pool, sizeof(*drb));
  drb->rs = rep_state;
  FUNC1(drb->md5_digest, target->data_rep->md5_digest,
         sizeof(drb->md5_digest));
  return FUNC2(drb, delta_read_next_window,
                                   delta_read_md5_digest, pool);
}