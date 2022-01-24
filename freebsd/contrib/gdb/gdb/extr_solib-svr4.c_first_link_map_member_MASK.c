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
struct link_map_offsets {int /*<<< orphan*/  r_map_size; scalar_t__ r_map_offset; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct link_map_offsets* FUNC0 () ; 
 scalar_t__ debug_base ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CORE_ADDR
FUNC6 (void)
{
  CORE_ADDR lm = 0;
  struct link_map_offsets *lmo = FUNC0 ();
  char *r_map_buf = FUNC5 (lmo->r_map_size);
  struct cleanup *cleanups = FUNC3 (xfree, r_map_buf);

  FUNC4 (debug_base + lmo->r_map_offset, r_map_buf, lmo->r_map_size);

  /* Assume that the address is unsigned.  */
  lm = FUNC2 (r_map_buf, lmo->r_map_size);

  /* FIXME:  Perhaps we should validate the info somehow, perhaps by
     checking r_version for a known version number, or r_state for
     RT_CONSISTENT. */

  FUNC1 (cleanups);

  return (lm);
}