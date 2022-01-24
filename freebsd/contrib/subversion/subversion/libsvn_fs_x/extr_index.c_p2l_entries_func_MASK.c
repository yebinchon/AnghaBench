#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ p2l_entries_baton_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {void* elts; } ;
typedef  TYPE_2__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*,void const* const*) ; 

__attribute__((used)) static svn_error_t *
FUNC2(void **out,
                 const void *data,
                 apr_size_t data_len,
                 void *baton,
                 apr_pool_t *result_pool)
{
  apr_array_header_t *entries = *(apr_array_header_t **)out;
  const apr_array_header_t *raw_page = data;
  p2l_entries_baton_t *block = baton;

  /* Make PAGE a readable APR array. */
  apr_array_header_t page = *raw_page;
  page.elts = (void *)FUNC1(raw_page,
                                    (const void * const *)&raw_page->elts);

  /* append relevant information to result */
  FUNC0(entries, &page, block->start, block->end, TRUE);

  return SVN_NO_ERROR;
}