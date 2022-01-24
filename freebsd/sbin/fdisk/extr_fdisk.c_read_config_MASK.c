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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ current_line_number ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(char *config_file)
{
    FILE	*fp = NULL;
    int		status = 1;
    char	buf[1010];

	while (1) {
		if (FUNC5(config_file, "-") != 0) {
	    /*
	     * We're not reading from stdin
	     */
			if ((fp = FUNC3(config_file, "r")) == NULL) {
		status = 0;
		break;
	    }
		} else {
	    fp = stdin;
	}
	current_line_number = 0;
		while (!FUNC1(fp)) {
	    if (FUNC2(buf, sizeof(buf), fp) == NULL)
		break;
	    ++current_line_number;
	    status = FUNC4(buf);
	    if (status == 0)
		break;
	    }
	break;
    }
	if (fp) {
	/*
	 * It doesn't matter if we're reading from stdin, as we've reached EOF
	 */
	FUNC0(fp);
    }
    return (status);
}