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
struct TYPE_5__ {scalar_t__ copyfrom_path; } ;
typedef  TYPE_1__ svn_log_changed_path_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

svn_log_changed_path_t *
FUNC2(const svn_log_changed_path_t *changed_path,
                         apr_pool_t *pool)
{
  svn_log_changed_path_t *new_changed_path
    = FUNC0(pool, sizeof(*new_changed_path));

  *new_changed_path = *changed_path;

  if (new_changed_path->copyfrom_path)
    new_changed_path->copyfrom_path =
      FUNC1(pool, new_changed_path->copyfrom_path);

  return new_changed_path;
}