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
struct TYPE_4__ {int /*<<< orphan*/  offsets; } ;
typedef  TYPE_1__ l2p_page_t ;
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (void*,TYPE_1__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__ const*,void const* const*) ; 

__attribute__((used)) static svn_error_t *
FUNC2(void **out,
                      const void *data,
                      apr_size_t data_len,
                      void *baton,
                      apr_pool_t *result_pool)
{
  /* resolve all in-cache pointers */
  const l2p_page_t *page = data;
  const apr_uint64_t *offsets
    = FUNC1(page, (const void *const *)&page->offsets);

  /* return the requested data */
  return FUNC0(baton, page, offsets, result_pool);
}