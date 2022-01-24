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
typedef  int vm_size_t ;
typedef  scalar_t__ db_expr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(db_expr_t addr, bool have_addr, db_expr_t count,
   char *modif)
{
	vm_size_t	size;
	db_expr_t	value;

	if (FUNC0(&value))
	    size = (vm_size_t) value;
	else
	    size = 4;
	FUNC3();

	FUNC2(FUNC1(addr), addr, size);
}