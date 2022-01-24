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
struct so_list {TYPE_1__* lm_info; } ;
struct link_map_offsets {int /*<<< orphan*/  l_prev_size; scalar_t__ l_prev_offset; } ;
struct TYPE_2__ {scalar_t__ lm; } ;

/* Variables and functions */
 struct link_map_offsets* FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (struct so_list *so)
{
  struct link_map_offsets *lmo = FUNC0 ();

  /* Assume that the address is unsigned.  */
  return FUNC1 (so->lm_info->lm + lmo->l_prev_offset,
				   lmo->l_prev_size) == 0;
}