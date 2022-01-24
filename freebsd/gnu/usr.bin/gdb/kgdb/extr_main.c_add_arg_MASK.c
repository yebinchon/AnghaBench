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
struct captured_main_args {int argc; char** argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char** FUNC1 (char**,int) ; 

__attribute__((used)) static void
FUNC2(struct captured_main_args *args, char *arg)
{

	args->argc++;
	args->argv = FUNC1(args->argv, (args->argc + 1) * sizeof(char *));
	if (args->argv == NULL)
		FUNC0(1, "Out of memory building argument list");
	args->argv[args->argc] = arg;
}