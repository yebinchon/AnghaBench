#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* created_path; void* prop_rep; void* data_rep; void* copyroot_path; void* copyfrom_path; } ;
typedef  TYPE_1__ svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_fs_x__noderev_t *
FUNC3(svn_fs_x__noderev_t *noderev,
                   apr_pool_t *result_pool)
{
  svn_fs_x__noderev_t *nr = FUNC0(result_pool, noderev,
                                        sizeof(*noderev));

  if (noderev->copyfrom_path)
    nr->copyfrom_path = FUNC1(result_pool, noderev->copyfrom_path);

  nr->copyroot_path = FUNC1(result_pool, noderev->copyroot_path);
  nr->data_rep = FUNC2(noderev->data_rep, result_pool);
  nr->prop_rep = FUNC2(noderev->prop_rep, result_pool);

  if (noderev->created_path)
    nr->created_path = FUNC1(result_pool, noderev->created_path);

  return nr;
}