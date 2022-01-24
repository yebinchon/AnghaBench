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
typedef  int /*<<< orphan*/  cell ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 char** FUNC3 (char**,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(const char *file, char ***cells, int *idx)
{
    FILE *f;
    char cell[64];
    int i;
    int ind = *idx;

    f = FUNC2(file, "r");
    if (f == NULL)
	return;
    while (FUNC1(cell, sizeof(cell), f)) {
	char *t;
	t = cell + FUNC6(cell);
	for (; t >= cell; t--)
	  if (*t == '\n' || *t == '\t' || *t == ' ')
	    *t = 0;
	if (cell[0] == '\0' || cell[0] == '#')
	    continue;
	for(i = 0; i < ind; i++)
	    if(FUNC4((*cells)[i], cell) == 0)
		break;
	if(i == ind){
	    char **tmp;

	    tmp = FUNC3(*cells, (ind + 1) * sizeof(**cells));
	    if (tmp == NULL)
		break;
	    *cells = tmp;
	    (*cells)[ind] = FUNC5(cell);
	    if ((*cells)[ind] == NULL)
		break;
	    ++ind;
	}
    }
    FUNC0(f);
    *idx = ind;
}