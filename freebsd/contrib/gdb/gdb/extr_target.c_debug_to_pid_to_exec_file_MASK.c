#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* (* to_pid_to_exec_file ) (int) ;} ;

/* Variables and functions */
 TYPE_1__ debug_target ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 char* FUNC1 (int) ; 

__attribute__((used)) static char *
FUNC2 (int pid)
{
  char *exec_file;

  exec_file = debug_target.to_pid_to_exec_file (pid);

  FUNC0 (gdb_stdlog, "target_pid_to_exec_file (%d) = %s\n",
		      pid, exec_file);

  return exec_file;
}