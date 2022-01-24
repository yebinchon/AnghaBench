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
 int /*<<< orphan*/  e7000_desc ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  using_pc ; 

__attribute__((used)) static void
FUNC7 (char *buf)
{
  if (!e7000_desc)
    FUNC0 ("Use \"target e7000 ...\" first.");

  if (remote_debug)
    FUNC3 ("Sending %s\n", buf);

  if (FUNC5 (e7000_desc, buf, FUNC6 (buf)))
    FUNC2 (gdb_stderr, "serial_write failed: %s\n", FUNC4 (errno));

  /* And expect to see it echoed, unless using the pc interface */
#if 0
  if (!using_pc)
#endif
    FUNC1 (buf);
}