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
typedef  char db_expr_t ;
typedef  int db_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char FUNC2 (int,int,int) ; 
 int db_next ; 
 int /*<<< orphan*/  db_pager_quit ; 
 int db_prev ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(db_addr_t addr, char *fmt, int count)
{
	int		c;
	db_expr_t	value;
	int		size;
	int		width;
	char *		fp;

	while (--count >= 0 && !db_pager_quit) {
	    fp = fmt;
	    size = 4;
	    while ((c = *fp++) != 0) {
		switch (c) {
		    case 'b':
			size = 1;
			break;
		    case 'h':
			size = 2;
			break;
		    case 'l':
			size = 4;
			break;
		    case 'g':
			size = 8;
			break;
		    case 'a':	/* address */
			size = sizeof(void *);
			/* always forces a new line */
			if (FUNC3() != 0)
			    FUNC4("\n");
			db_prev = addr;
			FUNC5(addr, DB_STGY_ANY);
			FUNC4(":\t");
			break;
		    default:
			if (FUNC3() == 0) {
			    /* Print the address. */
			    FUNC5(addr, DB_STGY_ANY);
			    FUNC4(":\t");
			    db_prev = addr;
			}

			width = size * 4;
			switch (c) {
			    case 'r':	/* signed, current radix */
				value = FUNC2(addr, size, true);
				addr += size;
				FUNC4("%+-*lr", width, (long)value);
				break;
			    case 'x':	/* unsigned hex */
				value = FUNC2(addr, size, false);
				addr += size;
				FUNC4("%-*lx", width, (long)value);
				break;
			    case 'z':	/* signed hex */
				value = FUNC2(addr, size, true);
				addr += size;
				FUNC4("%-*ly", width, (long)value);
				break;
			    case 'd':	/* signed decimal */
				value = FUNC2(addr, size, true);
				addr += size;
				FUNC4("%-*ld", width, (long)value);
				break;
			    case 'u':	/* unsigned decimal */
				value = FUNC2(addr, size, false);
				addr += size;
				FUNC4("%-*lu", width, (long)value);
				break;
			    case 'o':	/* unsigned octal */
				value = FUNC2(addr, size, false);
				addr += size;
				FUNC4("%-*lo", width, (long)value);
				break;
			    case 'c':	/* character */
				value = FUNC2(addr, 1, false);
				addr += 1;
				if (value >= ' ' && value <= '~')
				    FUNC4("%c", (int)value);
				else
				    FUNC4("\\%03o", (int)value);
				break;
			    case 's':	/* null-terminated string */
				for (;;) {
				    value = FUNC2(addr, 1, false);
				    addr += 1;
				    if (value == 0)
					break;
				    if (value >= ' ' && value <= '~')
					FUNC4("%c", (int)value);
				    else
					FUNC4("\\%03o", (int)value);
				}
				break;
			    case 'S':	/* symbol */
				value = FUNC2(addr, sizeof(void *),
				    false);
				addr += sizeof(void *);
				FUNC5(value, DB_STGY_ANY);
				break;
			    case 'i':	/* instruction */
				addr = FUNC0(addr, false);
				break;
			    case 'I':	/* instruction, alternate form */
				addr = FUNC0(addr, true);
				break;
			    default:
				break;
			}
			if (FUNC3() != 0)
			    FUNC1(1);
			break;
		}
	    }
	}
	db_next = addr;
}