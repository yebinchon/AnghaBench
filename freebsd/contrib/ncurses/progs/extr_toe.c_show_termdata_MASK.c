#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int db_index; unsigned long checksum; char* term_name; char* description; } ;
typedef  int /*<<< orphan*/  TERMDATA ;

/* Variables and functions */
 int /*<<< orphan*/  compare_termdata ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_1__* ptr_termdata ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int use_termdata ; 

__attribute__((used)) static void
FUNC3(int eargc, char **eargv)
{
    int j, k;
    size_t n;

    if (use_termdata) {
	if (eargc > 1) {
	    for (j = 0; j < eargc; ++j) {
		for (k = 0; k <= j; ++k) {
		    FUNC0("--");
		}
		FUNC0("> ");
		FUNC0("%s\n", eargv[j]);
	    }
	}
	if (use_termdata > 1)
	    FUNC1(ptr_termdata, use_termdata, sizeof(TERMDATA), compare_termdata);
	for (n = 0; n < use_termdata; ++n) {

	    /*
	     * If there is more than one database, show how they differ.
	     */
	    if (eargc > 1) {
		unsigned long check = 0;
		k = 0;
		for (;;) {
		    for (; k < ptr_termdata[n].db_index; ++k) {
			FUNC0("--");
		    }

		    /*
		     * If this is the first entry, or its checksum differs
		     * from the first entry's checksum, print "*". Otherwise
		     * it looks enough like a duplicate to print "+".
		     */
		    FUNC0("%c-", ((check == 0
				    || (check != ptr_termdata[n].checksum))
				   ? '*'
				   : '+'));
		    check = ptr_termdata[n].checksum;

		    ++k;
		    if ((n + 1) >= use_termdata
			|| FUNC2(ptr_termdata[n].term_name,
				  ptr_termdata[n + 1].term_name)) {
			break;
		    }
		    ++n;
		}
		for (; k < eargc; ++k) {
		    FUNC0("--");
		}
		FUNC0(":\t");
	    }

	    (void) FUNC0("%-10s\t%s\n",
			  ptr_termdata[n].term_name,
			  ptr_termdata[n].description);
	}
    }
}