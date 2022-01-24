#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  new_data; int /*<<< orphan*/  ops; struct TYPE_5__* window; } ;
typedef  TYPE_1__ svn_txdelta_window_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  TYPE_1__ svn_fs_fs__txdelta_cached_window_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void**) ; 

svn_error_t *
FUNC2(void **item,
                                      void *buffer,
                                      apr_size_t buffer_size,
                                      apr_pool_t *pool)
{
  svn_txdelta_window_t *window;

  /* Copy the _full_ buffer as it also contains the sub-structures. */
  svn_fs_fs__txdelta_cached_window_t *window_info =
      (svn_fs_fs__txdelta_cached_window_t *)buffer;

  /* pointer reference fixup */
  FUNC1(window_info,
                                 (void **)&window_info->window);
  window = window_info->window;

  FUNC1(window, (void **)&window->ops);

  FUNC0(window, (svn_string_t**)&window->new_data);

  /* done */
  *item = window_info;

  return SVN_NO_ERROR;
}