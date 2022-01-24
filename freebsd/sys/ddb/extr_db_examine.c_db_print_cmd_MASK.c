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
typedef  int /*<<< orphan*/  db_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char db_print_format ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(db_expr_t addr, bool have_addr, db_expr_t count, char *modif)
{
	db_expr_t	value;

	if (modif[0] != '\0')
	    db_print_format = modif[0];

	switch (db_print_format) {
	    case 'a':
		FUNC2((db_addr_t)addr, DB_STGY_ANY);
		break;
	    case 'r':
		FUNC1("%+11lr", (long)addr);
		break;
	    case 'x':
		FUNC1("%8lx", (unsigned long)addr);
		break;
	    case 'z':
		FUNC1("%8ly", (long)addr);
		break;
	    case 'd':
		FUNC1("%11ld", (long)addr);
		break;
	    case 'u':
		FUNC1("%11lu", (unsigned long)addr);
		break;
	    case 'o':
		FUNC1("%16lo", (unsigned long)addr);
		break;
	    case 'c':
		value = addr & 0xFF;
		if (value >= ' ' && value <= '~')
		    FUNC1("%c", (int)value);
		else
		    FUNC1("\\%03o", (int)value);
		break;
	    default:
		db_print_format = 'x';
		FUNC0("Syntax error: unsupported print modifier\n");
		/*NOTREACHED*/
	}
	FUNC1("\n");
}