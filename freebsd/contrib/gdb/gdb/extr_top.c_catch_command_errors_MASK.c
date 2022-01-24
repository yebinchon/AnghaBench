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
struct captured_command_args {char* arg; int from_tty; int /*<<< orphan*/ * command; } ;
typedef  int /*<<< orphan*/  return_mask ;
typedef  int /*<<< orphan*/  catch_command_errors_ftype ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct captured_command_args*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_captured_command ; 

int
FUNC1 (catch_command_errors_ftype * command,
		      char *arg, int from_tty, return_mask mask)
{
  struct captured_command_args args;
  args.command = command;
  args.arg = arg;
  args.from_tty = from_tty;
  return FUNC0 (do_captured_command, &args, "", mask);
}