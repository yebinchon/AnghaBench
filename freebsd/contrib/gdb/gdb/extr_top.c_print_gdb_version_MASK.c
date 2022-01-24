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
struct ui_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  host_name ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_name ; 
 int /*<<< orphan*/  version ; 

void
FUNC2 (struct ui_file *stream)
{
  /* From GNU coding standards, first line is meant to be easy for a
     program to parse, and is just canonical program name and version
     number, which starts after last space. */

  FUNC0 (stream, "GNU gdb %s\n", version);

  /* Second line is a copyright notice. */

  FUNC0 (stream, "Copyright 2004 Free Software Foundation, Inc.\n");

  /* Following the copyright is a brief statement that the program is
     free software, that users are free to copy and change it on
     certain conditions, that it is covered by the GNU GPL, and that
     there is no warranty. */

  FUNC0 (stream, "\
GDB is free software, covered by the GNU General Public License, and you are\n\
welcome to change it and/or distribute copies of it under certain conditions.\n\
Type \"show copying\" to see the conditions.\n\
There is absolutely no warranty for GDB.  Type \"show warranty\" for details.\n");

  /* After the required info we print the configuration information. */

  FUNC0 (stream, "This GDB was configured as \"");
  if (FUNC1 (host_name, target_name) != 0)
    {
      FUNC0 (stream, "--host=%s --target=%s", host_name, target_name);
    }
  else
    {
      FUNC0 (stream, "%s", host_name);
    }
  FUNC0 (stream, "\".");
}