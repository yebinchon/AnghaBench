#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {scalar_t__ copyfrom_path; TYPE_1__ path; } ;
typedef  TYPE_2__ svn_repos_path_change_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

svn_repos_path_change_t *
FUNC3(svn_repos_path_change_t *change,
                          apr_pool_t *result_pool)
{
  svn_repos_path_change_t *new_change = FUNC0(result_pool, change,
                                                    sizeof(*new_change));

  new_change->path.data = FUNC2(result_pool, change->path.data,
                                         change->path.len);
  if (change->copyfrom_path)
    new_change->copyfrom_path = FUNC1(result_pool,
                                            change->copyfrom_path);

  return new_change;
}