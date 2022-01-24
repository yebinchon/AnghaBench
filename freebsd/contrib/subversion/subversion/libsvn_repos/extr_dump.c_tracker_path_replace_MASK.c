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
typedef  int /*<<< orphan*/  path_tracker_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void
FUNC1(path_tracker_t *tracker,
                     const char *path)
{
  /* this will implicitly purge all previous sub-tree info from STACK.
     Thus, no need to tack the deletion explicitly. */
  FUNC0(tracker, path);
}