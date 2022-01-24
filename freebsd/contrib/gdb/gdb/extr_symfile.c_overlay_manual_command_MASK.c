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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  overlay_debugging ; 
 int /*<<< orphan*/  ovly_on ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (char *args, int from_tty)
{
  overlay_debugging = ovly_on;
  FUNC0 ();
  if (info_verbose)
    FUNC1 ("Overlay debugging enabled.");
}