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
struct TYPE_5__ {void* created_path; int /*<<< orphan*/  has_mergeinfo; int /*<<< orphan*/  mergeinfo_count; void* prop_rep; void* data_rep; int /*<<< orphan*/  copyroot_rev; void* copyroot_path; int /*<<< orphan*/  copyfrom_rev; void* copyfrom_path; int /*<<< orphan*/  predecessor_count; scalar_t__ predecessor_id; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 void* FUNC3 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static node_revision_t *
FUNC4(node_revision_t *noderev,
                   apr_pool_t *pool)
{
  node_revision_t *nr = FUNC0(pool, sizeof(*nr));
  nr->kind = noderev->kind;
  if (noderev->predecessor_id)
    nr->predecessor_id = FUNC2(noderev->predecessor_id, pool);
  nr->predecessor_count = noderev->predecessor_count;
  if (noderev->copyfrom_path)
    nr->copyfrom_path = FUNC1(pool, noderev->copyfrom_path);
  nr->copyfrom_rev = noderev->copyfrom_rev;
  nr->copyroot_path = FUNC1(pool, noderev->copyroot_path);
  nr->copyroot_rev = noderev->copyroot_rev;
  nr->data_rep = FUNC3(noderev->data_rep, pool);
  nr->prop_rep = FUNC3(noderev->prop_rep, pool);
  nr->mergeinfo_count = noderev->mergeinfo_count;
  nr->has_mergeinfo = noderev->has_mergeinfo;

  if (noderev->created_path)
    nr->created_path = FUNC1(pool, noderev->created_path);
  return nr;
}