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
struct cell_list {char const* cell; struct cell_list* next; } ;

/* Variables and functions */
 struct cell_list* cell_list ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct cell_list*) ; 
 struct cell_list* FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 char const* FUNC4 (char const*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC6(const char *cell, int expand)
{
    struct cell_list *p, **q;
    const char *c = cell;
    if(expand){
	c = FUNC0(cell);
	if(c == NULL){
	    FUNC5("No cell matching \"%s\" found.", cell);
	    return -1;
	}
	if(verbose && FUNC3(c, cell) != 0)
	    FUNC5("Cell \"%s\" expanded to \"%s\"", cell, c);
    }
    /* add to list of cells to get tokens for, and also remove
       duplicates; the actual afslog takes place later */
    for(p = cell_list, q = &cell_list; p; q = &p->next, p = p->next)
	if(FUNC3(p->cell, c) == 0)
	    return 0;
    p = FUNC2(sizeof(*p));
    if(p == NULL)
	return -1;
    p->cell = FUNC4(c);
    if(p->cell == NULL) {
	FUNC1(p);
	return -1;
    }
    p->next = NULL;
    *q = p;
    return 0;
}