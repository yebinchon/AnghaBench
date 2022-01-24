#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ handle; } ;
typedef  TYPE_1__ xlate_handle_node_t ;
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_UTF_NTOU_XLATE_HANDLE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_stringbuf_t **dest,
                          const svn_stringbuf_t *src,
                          apr_pool_t *pool)
{
  xlate_handle_node_t *node;
  svn_error_t *err;

  FUNC0(FUNC4(&node, pool));

  if (node->handle)
    {
      err = FUNC3(node, src->data, src->len, dest, pool);
      if (! err)
        err = FUNC2((*dest)->data, (*dest)->len, pool);
    }
  else
    {
      err = FUNC1(src->data, src->len, pool);
      if (! err)
        *dest = FUNC7(src, pool);
    }

  return FUNC6(err,
                                  FUNC5
                                     (node,
                                      SVN_UTF_NTOU_XLATE_HANDLE,
                                      pool));
}