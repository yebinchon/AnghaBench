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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ remote_fio_system_call_allowed ; 

__attribute__((used)) static void
FUNC2 (char *args, int from_tty)
{
  if (args)
    FUNC0 ("Garbage after \"show remote system-call-allowed\" command: `%s'", args);
  FUNC1 ("Calling host system(3) call from target is %sallowed\n",
		     remote_fio_system_call_allowed ? "" : "not ");
}