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
struct ui_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* to_rcmd ) (char*,struct ui_file*) ;} ;

/* Variables and functions */
 TYPE_1__ debug_target ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ui_file*) ; 

__attribute__((used)) static void
FUNC2 (char *command,
	       struct ui_file *outbuf)
{
  debug_target.to_rcmd (command, outbuf);
  FUNC0 (gdb_stdlog, "target_rcmd (%s, ...)\n", command);
}