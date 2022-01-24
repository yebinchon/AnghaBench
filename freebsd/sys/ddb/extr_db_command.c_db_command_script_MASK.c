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
 int /*<<< orphan*/  db_cmd_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  db_dot ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  db_last_command ; 
 int /*<<< orphan*/  db_next ; 
 int /*<<< orphan*/  db_prev ; 

void
FUNC2(const char *command)
{
	db_prev = db_next = db_dot;
	FUNC1(command);
	FUNC0(&db_last_command, &db_cmd_table, /* dopager */ 0);
}