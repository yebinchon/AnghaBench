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
typedef  scalar_t__ db_expr_t ;
typedef  void* db_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (void*,int,int) ; 
 void* db_next ; 
 void* db_prev ; 
 int /*<<< orphan*/  FUNC3 (char*,long,long) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(db_expr_t address, bool have_addr, db_expr_t count,
    char * modif)
{
	db_addr_t	addr;
	db_expr_t	old_value;
	db_expr_t	new_value;
	int		size;
	bool		wrote_one = false;

	addr = (db_addr_t) address;

	switch (modif[0]) {
	    case 'b':
		size = 1;
		break;
	    case 'h':
		size = 2;
		break;
	    case 'l':
	    case '\0':
		size = 4;
		break;
	    default:
		FUNC0("Unknown size\n");
		return;
	}

	while (FUNC1(&new_value)) {
	    old_value = FUNC2(addr, size, false);
	    FUNC4(addr, DB_STGY_ANY);
	    FUNC3("\t\t%#8lr\t=\t%#8lr\n", (long)old_value,(long)new_value);
	    FUNC5(addr, size, new_value);
	    addr += size;

	    wrote_one = true;
	}

	if (!wrote_one)
	    FUNC0("Nothing written.\n");

	db_next = addr;
	db_prev = addr - size;

	FUNC6();
}