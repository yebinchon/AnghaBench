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
struct TYPE_2__ {scalar_t__ offset; } ;
typedef  TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef  scalar_t__ apr_off_t ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(const void *lhs,
                        const void *rhs)
{
  const svn_fs_x__p2l_entry_t *entry = lhs;
  apr_off_t start = *(const apr_off_t*)rhs;
  apr_off_t diff = entry->offset - start;

  /* restrict result to int */
  return diff < 0 ? -1 : (diff == 0 ? 0 : 1);
}