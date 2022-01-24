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
struct inodesc {char* id_name; int /*<<< orphan*/  id_parent; int /*<<< orphan*/  id_fix; int /*<<< orphan*/  id_type; int /*<<< orphan*/  id_func; int /*<<< orphan*/  id_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int FOUND ; 
 int /*<<< orphan*/  IGNORE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,struct inodesc*) ; 
 int /*<<< orphan*/  curinode ; 
 int /*<<< orphan*/  curinum ; 
 int /*<<< orphan*/  findino ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(char *name)
{
    struct inodesc idesc;

    if (!FUNC0())
	    return 0;
    idesc.id_number = curinum;
    idesc.id_func = findino;
    idesc.id_name = name;
    idesc.id_type = DATA;
    idesc.id_fix = IGNORE;
    if (FUNC1(curinode, &idesc) & FOUND) {
	curinum = idesc.id_parent;
	curinode = FUNC2(curinum);
	FUNC3(0);
	return 1;
    } else {
	FUNC4("name `%s' not found in current inode directory", name);
	return 0;
    }
}