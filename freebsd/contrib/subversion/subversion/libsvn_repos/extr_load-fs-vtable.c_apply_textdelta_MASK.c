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
typedef  int /*<<< orphan*/ * svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_baton {int /*<<< orphan*/  txn_root; scalar_t__ skipped; } ;
struct node_baton {int /*<<< orphan*/  pool; int /*<<< orphan*/  result_checksum; int /*<<< orphan*/  base_checksum; int /*<<< orphan*/  path; struct revision_baton* rb; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC2(svn_txdelta_window_handler_t *handler,
                void **handler_baton,
                void *node_baton)
{
  struct node_baton *nb = node_baton;
  struct revision_baton *rb = nb->rb;

  /* If we're skipping this revision, we're done here. */
  if (rb->skipped)
    {
      *handler = NULL;
      return SVN_NO_ERROR;
    }

  return FUNC1(handler, handler_baton,
                                rb->txn_root, nb->path,
                                FUNC0(nb->base_checksum,
                                                        nb->pool),
                                FUNC0(nb->result_checksum,
                                                        nb->pool),
                                nb->pool);
}