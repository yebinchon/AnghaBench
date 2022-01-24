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
struct kafs_data {char* (* get_realm ) (struct kafs_data*,char*) ;} ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  _PATH_ARLA_CELLSERVDB ; 
 int /*<<< orphan*/  _PATH_ARLA_DEBIAN_CELLSERVDB ; 
 int /*<<< orphan*/  _PATH_CELLSERVDB ; 
 int /*<<< orphan*/  _PATH_OPENAFS_DEBIAN_CELLSERVDB ; 
 int /*<<< orphan*/  _PATH_OPENAFS_MACOSX_CELLSERVDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char**,char*) ; 
 char* FUNC8 (struct kafs_data*,char*) ; 

__attribute__((used)) static int
FUNC9(struct kafs_data *data,
	       const char *cell, char **realm, int exact)
{
    FILE *F;
    char buf[1024];
    char *p;
    int ret = -1;

    if ((F = FUNC2(_PATH_CELLSERVDB, "r"))
	|| (F = FUNC2(_PATH_ARLA_CELLSERVDB, "r"))
	|| (F = FUNC2(_PATH_OPENAFS_DEBIAN_CELLSERVDB, "r"))
	|| (F = FUNC2(_PATH_OPENAFS_MACOSX_CELLSERVDB, "r"))
	|| (F = FUNC2(_PATH_ARLA_DEBIAN_CELLSERVDB, "r"))) {
	while (FUNC1(buf, sizeof(buf), F)) {
	    int cmp;

	    if (buf[0] != '>')
		continue; /* Not a cell name line, try next line */
	    p = buf;
	    FUNC7(&p, " \t\n#");

	    if (exact)
		cmp = FUNC4(buf + 1, cell);
	    else
		cmp = FUNC6(buf + 1, cell, FUNC5(cell));

	    if (cmp == 0) {
		/*
		 * We found the cell name we're looking for.
		 * Read next line on the form ip-address '#' hostname
		 */
		if (FUNC1(buf, sizeof(buf), F) == NULL)
		    break;	/* Read failed, give up */
		p = FUNC3(buf, '#');
		if (p == NULL)
		    break;	/* No '#', give up */
		p++;
		if (buf[FUNC5(buf) - 1] == '\n')
		    buf[FUNC5(buf) - 1] = '\0';
		*realm = (*data->get_realm)(data, p);
		if (*realm && **realm != '\0')
		    ret = 0;
		break;		/* Won't try any more */
	    }
	}
	FUNC0(F);
    }
    return ret;
}