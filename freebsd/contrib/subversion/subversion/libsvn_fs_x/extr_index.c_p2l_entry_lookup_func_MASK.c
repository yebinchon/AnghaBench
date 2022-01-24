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
struct TYPE_4__ {scalar_t__ offset; } ;
typedef  TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC0 (void const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC2(void **out,
                      const void *data,
                      apr_size_t data_len,
                      void *baton,
                      apr_pool_t *result_pool)
{
  svn_fs_x__p2l_entry_t *entry
    = FUNC0(data, *(apr_off_t *)baton, result_pool,
                                     result_pool);

  *out = entry && entry->offset == *(apr_off_t *)baton
       ? FUNC1(entry, result_pool)
       : NULL;

  return SVN_NO_ERROR;
}