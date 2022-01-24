#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; TYPE_1__* next; struct TYPE_6__* children; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(apr_hash_t **proplist_p,
                         const svn_skel_t *skel,
                         apr_pool_t *pool /* result_pool */)
{
  apr_hash_t *proplist = NULL;
  svn_skel_t *elt;

  /* Validate the skel. */
  if (! FUNC3(skel))
    return FUNC4("proplist");

  /* Create the returned structure */
  proplist = FUNC0(pool);
  for (elt = skel->children; elt; elt = elt->next->next)
    {
      svn_string_t *value = FUNC5(elt->next->data,
                                               elt->next->len, pool);
      FUNC1(proplist,
                   FUNC2(pool, elt->data, elt->len),
                   elt->len,
                   value);
    }

  /* Return the structure. */
  *proplist_p = proplist;
  return SVN_NO_ERROR;
}