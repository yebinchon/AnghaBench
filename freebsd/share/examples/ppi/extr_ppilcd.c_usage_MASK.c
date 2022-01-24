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
struct TYPE_2__ {char* l_code; char* l_name; char** l_options; } ;

/* Variables and functions */
 char* DEFAULT_DEVICE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* lcd_drivertab ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void) 
{
    int		i, j;
    
    FUNC1(stderr, "usage: %s [-v] [-d drivername] [-f device] [-o options] [args...]\n", progname);
    FUNC1(stderr, "   -D      Increase debugging\n");
    FUNC1(stderr, "   -f      Specify device, default is '%s'\n", DEFAULT_DEVICE);
    FUNC1(stderr, "   -d      Specify driver, one of:\n");
    for (i = 0; lcd_drivertab[i].l_code != NULL; i++) {
	FUNC1(stderr, "              %-10s (%s)%s\n", 
		lcd_drivertab[i].l_code, lcd_drivertab[i].l_name, (i == 0) ? " *default*" : "");
	if (lcd_drivertab[i].l_options[0] != NULL) {
	    
	    for (j = 0; lcd_drivertab[i].l_options[j] != NULL; j++)
		FUNC1(stderr, "                  %s\n", lcd_drivertab[i].l_options[j]);
	}
    }
    FUNC1(stderr, "  -o       Specify driver option string\n");
    FUNC1(stderr, "  args     Message strings.  Embedded escapes supported:\n");
    FUNC1(stderr, "                  \\b	Backspace\n");
    FUNC1(stderr, "                  \\f	Clear display, home cursor\n");
    FUNC1(stderr, "                  \\n	Newline\n");
    FUNC1(stderr, "                  \\r	Carriage return\n");
    FUNC1(stderr, "                  \\R	Reset display\n");
    FUNC1(stderr, "                  \\v	Home cursor\n");
    FUNC1(stderr, "                  \\\\	Literal \\\n");
    FUNC1(stderr, "           If args not supplied, strings are read from standard input\n");
    FUNC0(EX_USAGE);
}