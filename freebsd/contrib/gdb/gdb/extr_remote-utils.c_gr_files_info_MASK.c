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
struct target_ops {int to_shortname; } ;

/* Variables and functions */
 int baud_rate ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ exec_bfd ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 () ; 

void
FUNC3 (struct target_ops *ops)
{
#ifdef __GO32__
  printf_filtered ("\tAttached to DOS asynctsr\n");
#else
  FUNC1 ("\tAttached to %s", FUNC2 ());
  if (baud_rate != -1)
    FUNC1 ("at %d baud", baud_rate);
  FUNC1 ("\n");
#endif

  if (exec_bfd)
    {
      FUNC1 ("\tand running program %s\n",
		       FUNC0 (exec_bfd));
    }
  FUNC1 ("\tusing the %s protocol.\n", ops->to_shortname);
}