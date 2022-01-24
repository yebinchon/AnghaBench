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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  sub_items; int /*<<< orphan*/  offsets; } ;
typedef  TYPE_1__ l2p_page_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (void*,TYPE_1__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (TYPE_1__ const*,void const* const*) ; 

__attribute__((used)) static svn_error_t *
FUNC2(void **out,
                     const void *data,
                     apr_size_t data_len,
                     void *baton,
                     apr_pool_t *result_pool)
{
  /* resolve all in-cache pointers */
  const l2p_page_t *page = data;
  const apr_off_t *offsets
    = FUNC1(page, (const void *const *)&page->offsets);
  const apr_uint32_t *sub_items
    = FUNC1(page, (const void *const *)&page->sub_items);

  /* return the requested data */
  return FUNC0(baton, page, offsets, sub_items, result_pool);
}