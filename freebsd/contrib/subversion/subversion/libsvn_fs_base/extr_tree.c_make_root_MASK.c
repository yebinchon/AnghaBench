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
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_6__ {TYPE_2__* fsap_data; int /*<<< orphan*/ * vtable; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ svn_fs_root_t ;
struct TYPE_7__ {scalar_t__ node_cache_idx; int /*<<< orphan*/  node_cache; } ;
typedef  TYPE_2__ base_root_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  root_vtable ; 

__attribute__((used)) static svn_fs_root_t *
FUNC3(svn_fs_t *fs,
          apr_pool_t *pool)
{
  svn_fs_root_t *root = FUNC2(pool, sizeof(*root));
  base_root_data_t *brd = FUNC1(pool, sizeof(*brd));

  root->fs = fs;
  root->pool = pool;

  /* Init the node ID cache. */
  brd->node_cache = FUNC0(pool);
  brd->node_cache_idx = 0;
  root->vtable = &root_vtable;
  root->fsap_data = brd;

  return root;
}