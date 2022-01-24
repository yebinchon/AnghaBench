#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_revert_list_copied_child_info_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const void *a, const void *b)
{
  const svn_wc__db_revert_list_copied_child_info_t * const *ca = a;
  const svn_wc__db_revert_list_copied_child_info_t * const *cb = b;
  int i;

  i = FUNC0(ca[0]->abspath, cb[0]->abspath);

  /* Reverse the result of svn_path_compare_paths() to achieve
   * descending order. */
  return -i;
}