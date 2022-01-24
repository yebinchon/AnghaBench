#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_baton {TYPE_1__* pb; int /*<<< orphan*/  txn_root; scalar_t__ skipped; } ;
struct node_baton {int /*<<< orphan*/  pool; int /*<<< orphan*/  path; struct revision_baton* rb; } ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_2__ {int /*<<< orphan*/  validate_props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton)
{
  struct node_baton *nb = baton;
  struct revision_baton *rb = nb->rb;
  apr_hash_t *proplist;
  apr_hash_index_t *hi;

  /* If we're skipping this revision, we're done here. */
  if (rb->skipped)
    return SVN_NO_ERROR;

  FUNC0(FUNC5(&proplist,
                               rb->txn_root, nb->path, nb->pool));

  for (hi = FUNC1(nb->pool, proplist); hi; hi = FUNC2(hi))
    {
      const char *key = FUNC3(hi);

      FUNC0(FUNC4(rb->txn_root, nb->path, key, NULL,
                               rb->pb->validate_props, nb->pool));
    }

  return SVN_NO_ERROR;
}