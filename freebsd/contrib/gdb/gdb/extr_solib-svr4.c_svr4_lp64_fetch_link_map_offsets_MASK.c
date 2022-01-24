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
struct link_map_offsets {int r_debug_size; int r_map_offset; int r_map_size; int link_map_size; int l_addr_size; int l_name_offset; int l_name_size; int l_next_offset; int l_next_size; int l_prev_offset; int l_prev_size; scalar_t__ l_addr_offset; } ;

/* Variables and functions */

struct link_map_offsets *
FUNC0 (void)
{
  static struct link_map_offsets lmo;
  static struct link_map_offsets *lmp = NULL;

  if (lmp == NULL)
    {
      lmp = &lmo;

      /* Everything we need is in the first 16 bytes.  */
      lmo.r_debug_size = 16;
      lmo.r_map_offset = 8;
      lmo.r_map_size   = 8;

      /* Everything we need is in the first 40 bytes.  */
      lmo.link_map_size = 40;
      lmo.l_addr_offset = 0;
      lmo.l_addr_size   = 8;
      lmo.l_name_offset = 8;
      lmo.l_name_size   = 8;
      lmo.l_next_offset = 24;
      lmo.l_next_size   = 8;
      lmo.l_prev_offset = 32;
      lmo.l_prev_size   = 8;
    }

  return lmp;
}