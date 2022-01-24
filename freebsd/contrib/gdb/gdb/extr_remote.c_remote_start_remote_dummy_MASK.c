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
struct ui_out {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static int
FUNC1 (struct ui_out *uiout, void *dummy)
{
  FUNC0 ();		/* Initialize gdb process mechanisms */
  /* NOTE: Return something >=0.  A -ve value is reserved for
     catch_exceptions.  */
  return 1;
}