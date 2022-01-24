#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_8__ {int /*<<< orphan*/  have_recurse; int /*<<< orphan*/  items; TYPE_1__* wcroot; } ;
typedef  TYPE_2__ svn_wc__db_commit_queue_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  commit_queue_item_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_wc__db_commit_queue_t **queue,
                               svn_wc__db_t *db,
                               const char *wri_abspath,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_wc__db_commit_queue_t *q;

  FUNC1(FUNC5(wri_abspath));

  FUNC0(FUNC6(&wcroot, &local_relpath, db,
                              wri_abspath, result_pool, scratch_pool));
  FUNC2(wcroot);

  q = FUNC4(result_pool, sizeof(*q));

  FUNC1(wcroot->sdb);

  q->wcroot = wcroot;
  q->items = FUNC3(result_pool, 64,
                            sizeof(commit_queue_item_t*));
  q->have_recurse = FALSE;

  *queue = q;
  return SVN_NO_ERROR;
}