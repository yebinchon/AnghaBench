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
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ history_size ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty, struct cmd_list_element *c)
{
  if (history_size == INT_MAX)
    FUNC2 ();
  else if (history_size >= 0)
    FUNC1 (history_size);
  else
    {
      history_size = INT_MAX;
      FUNC0 ("History size must be non-negative");
    }
}