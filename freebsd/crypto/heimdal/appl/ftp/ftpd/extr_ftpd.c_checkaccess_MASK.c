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
 int ALLOWED ; 
 int BUFSIZ ; 
 int NOT_ALLOWED ; 
 int /*<<< orphan*/  _PATH_FTPUSERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char*,char**) ; 

__attribute__((used)) static int
FUNC6(char *name)
{
#define ALLOWED		0
#define	NOT_ALLOWED	1
    FILE *fd;
    int allowed = ALLOWED;
    char *user, *perm, line[BUFSIZ];
    char *foo;

    fd = FUNC2(_PATH_FTPUSERS, "r");

    if(fd == NULL)
	return allowed;

    while (FUNC1(line, sizeof(line), fd) != NULL)  {
	foo = NULL;
	user = FUNC5(line, " \t\n", &foo);
	if (user == NULL || user[0] == '#')
	    continue;
	perm = FUNC5(NULL, " \t\n", &foo);
	if (FUNC3(user, name) == 0){
	    if(perm && FUNC4(perm, "allow") == 0)
		allowed = ALLOWED;
	    else
		allowed = NOT_ALLOWED;
	    break;
	}
    }
    FUNC0(fd);
    return allowed;
}