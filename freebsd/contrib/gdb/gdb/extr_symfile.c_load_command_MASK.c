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

/* Variables and functions */
 char* FUNC0 (int) ; 
 int overlay_cache_invalid ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2 (char *arg, int from_tty)
{
  if (arg == NULL)
    arg = FUNC0 (1);
  FUNC1 (arg, from_tty);

  /* After re-loading the executable, we don't really know which
     overlays are mapped any more.  */
  overlay_cache_invalid = 1;
}