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
struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ valid; } ;
typedef  TYPE_1__ xlate_handle_node_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 TYPE_1__** FUNC1 (scalar_t__,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__**,char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ xlate_handle_hash ; 

__attribute__((used)) static svn_error_t *
FUNC3(xlate_handle_node_t **ret,
                               const char *topage, const char *frompage,
                               const char *userdata_key, apr_pool_t *pool)
{
  /* If we already have a handle, just return it. */
  if (userdata_key && xlate_handle_hash)
    {
      xlate_handle_node_t *old_node = NULL;

      /* 2nd level: hash lookup */
      xlate_handle_node_t **old_node_p = FUNC1(xlate_handle_hash,
                                                       userdata_key);
      if (old_node_p)
        old_node = *old_node_p;
      if (old_node)
        {
          /* Ensure that the handle is still valid. */
          if (old_node->valid)
            {
              /* Remove from the list. */
              *old_node_p = old_node->next;
              old_node->next = NULL;
              *ret = old_node;
              return SVN_NO_ERROR;
            }
        }
    }

  /* Note that we still have the mutex locked (if it is initialized), so we
     can use the global pool for creating the new xlate handle. */

  /* Use the correct pool for creating the handle. */
  pool = FUNC0(xlate_handle_hash);

  return FUNC2(ret, topage, frompage, pool);
}