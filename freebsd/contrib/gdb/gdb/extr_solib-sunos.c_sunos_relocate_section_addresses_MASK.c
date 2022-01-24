#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct so_list {int dummy; } ;
struct section_table {int /*<<< orphan*/  endaddr; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct so_list*) ; 

__attribute__((used)) static void
FUNC1 (struct so_list *so,
                                 struct section_table *sec)
{
  sec->addr += FUNC0 (so);
  sec->endaddr += FUNC0 (so);
}