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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,char*) ; 
 int FUNC9 (char*) ; 

int
FUNC10(char *pattern)
{
    char line[1024];
    FILE *f;

    FUNC8(line, sizeof(line),
	     "/bin/locate -d %s -- %s",
	     FUNC1("/etc/locatedb"),
	     pattern);
    f = FUNC3(line, "r", 1, 1);
    if(f == NULL){
	FUNC6(550, "/bin/locate");
	return 1;
    }
    FUNC4(200, "Output from find.");
    while(FUNC0(line, sizeof(line), f)){
	if(line[FUNC9(line)-1] == '\n')
	    line[FUNC9(line)-1] = 0;
	FUNC5("%s", line);
    }
    FUNC7(200, "Done");
    FUNC2(f);
    return 0;
}