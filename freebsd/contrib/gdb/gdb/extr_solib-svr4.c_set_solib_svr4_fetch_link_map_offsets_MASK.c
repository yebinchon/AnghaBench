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
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fetch_link_map_offsets_gdbarch_data ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch*,int /*<<< orphan*/ ,struct link_map_offsets* (*) ()) ; 

void
FUNC1 (struct gdbarch *gdbarch,
                                       struct link_map_offsets *(*flmo) (void))
{
  FUNC0 (gdbarch, fetch_link_map_offsets_gdbarch_data, flmo);
}