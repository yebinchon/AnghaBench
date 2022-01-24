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
struct TYPE_5__ {scalar_t__ prop_hash; scalar_t__ node_name; } ;
typedef  TYPE_1__ svn_client_proplist_item_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_client_proplist_item_t *
FUNC3(const svn_client_proplist_item_t *item,
                             apr_pool_t * pool)
{
  svn_client_proplist_item_t *new_item = FUNC0(pool, sizeof(*new_item));

  if (item->node_name)
    new_item->node_name = FUNC2(item->node_name, pool);

  if (item->prop_hash)
    new_item->prop_hash = FUNC1(item->prop_hash, pool);

  return new_item;
}