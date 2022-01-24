#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ is_txn_root; TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_root_t ;
struct dag_node_cache_t {int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  dag_node_t ;
struct TYPE_5__ {int /*<<< orphan*/  node_cache; } ;
typedef  TYPE_2__ base_root_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dag_node_cache_t* FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static dag_node_t *
FUNC3(svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  base_root_data_t *brd = root->fsap_data;
  struct dag_node_cache_t *cache_item;

  /* Assert valid input. */
  FUNC0(*path == '/');

  /* Only allow revision roots. */
  if (root->is_txn_root)
    return NULL;

  /* Look in the cache for our desired item. */
  cache_item = FUNC2(brd->node_cache, path);
  if (cache_item)
    return FUNC1(cache_item->node, pool);

  return NULL;
}