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
struct TYPE_2__ {int /*<<< orphan*/  (* help_function ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;scalar_t__ name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__* console_cmds ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(FILE * out, int detail)
{
	int i;

	FUNC0(out, "Supported commands and syntax:\n");
	FUNC0(out, "help [<command>]\n");
	/* skip help command */
	for (i = 1; console_cmds[i].name; i++)
		console_cmds[i].help_function(out, 0);
}