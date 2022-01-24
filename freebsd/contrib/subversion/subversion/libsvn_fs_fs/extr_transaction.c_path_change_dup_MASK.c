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
struct TYPE_6__ {scalar_t__ copyfrom_path; int /*<<< orphan*/  node_rev_id; } ;
typedef  TYPE_1__ svn_fs_path_change2_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_fs_path_change2_t *
FUNC3(const svn_fs_path_change2_t *source,
                apr_pool_t *result_pool)
{
  svn_fs_path_change2_t *result = FUNC0(result_pool, source,
                                              sizeof(*source));
  result->node_rev_id = FUNC2(source->node_rev_id, result_pool);
  if (source->copyfrom_path)
    result->copyfrom_path = FUNC1(result_pool, source->copyfrom_path);

  return result;
}