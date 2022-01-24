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
 int PBUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  sds_interrupt_twice ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (int signo)
{
  unsigned char buf[PBUFSIZ];

  /* If this doesn't work, try more severe steps.  */
  FUNC2 (signo, sds_interrupt_twice);

  if (remote_debug)
    FUNC0 (gdb_stdlog, "sds_interrupt called\n");

  buf[0] = 25;
  FUNC1 (buf, 1);
}