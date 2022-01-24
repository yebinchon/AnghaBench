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
struct pathhead {int dummy; } ;
struct pathentry {int /*<<< orphan*/ * path; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct pathhead*,struct pathentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pathhead*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  errno ; 
 struct pathentry* FUNC3 (int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static void
FUNC6(struct pathhead *pathq, char *path, int uniq)
{
	char *p;
	struct pathentry *pe;
	
	while ((p = FUNC5(&path, ";")) != NULL)
		if (!uniq) {
			if (((pe = FUNC3(sizeof(*pe))) == NULL) ||
			    ((pe->path = FUNC4(p)) == NULL)) {
				errno = ENOMEM;
				FUNC2(1, "allocating path element");
			}
			FUNC0(pathq, pe, next);
		} else {
			FUNC1(pathq, p, 1, 0);
		}
}