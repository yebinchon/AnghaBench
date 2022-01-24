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
struct TYPE_5__ {int len; struct TYPE_5__* next; struct TYPE_5__* children; struct TYPE_5__ const* data; scalar_t__ is_atom; } ;
typedef  TYPE_1__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 

svn_skel_t *FUNC1(const svn_skel_t *src_skel, svn_boolean_t dup_data,
                          apr_pool_t *result_pool)
{
  svn_skel_t *skel = FUNC0(result_pool, src_skel, sizeof(svn_skel_t));

  if (dup_data && skel->data)
    {
      if (skel->is_atom)
        skel->data = FUNC0(result_pool, skel->data, skel->len);
      else
        {
          /* When creating a skel this would be NULL, 0 for a list.
             When parsing a string to a skel this might point to real data
             delimiting the sublist. We don't copy that from here. */
          skel->data = NULL;
          skel->len = 0;
        }
    }

  if (skel->children)
    skel->children = FUNC1(skel->children, dup_data, result_pool);

  if (skel->next)
    skel->next = FUNC1(skel->next, dup_data, result_pool);

  return skel;
}