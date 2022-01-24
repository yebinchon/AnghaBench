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
typedef  int db_expr_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(db_expr_t addr, bool have_addr, db_expr_t count,
   char *modif)
{
	int rc;

	if (count < 0)
		count = 4;

	rc = FUNC0(addr, count);
	if (rc < 0)
		FUNC1("hardware watchpoint could not be set\n");
}