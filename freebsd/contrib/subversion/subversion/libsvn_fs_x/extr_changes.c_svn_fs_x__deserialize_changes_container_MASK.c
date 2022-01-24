#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  offsets; int /*<<< orphan*/  changes; int /*<<< orphan*/  paths; } ;
typedef  TYPE_1__ svn_fs_x__changes_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(void **out,
                                         void *data,
                                         apr_size_t data_len,
                                         apr_pool_t *result_pool)
{
  svn_fs_x__changes_t *changes = (svn_fs_x__changes_t *)data;

  /* de-serialize sub-structures */
  FUNC1(changes, &changes->paths);
  FUNC0(changes, &changes->changes, result_pool);
  FUNC0(changes, &changes->offsets, result_pool);

  /* done */
  *out = changes;

  return SVN_NO_ERROR;
}