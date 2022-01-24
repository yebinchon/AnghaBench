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
struct inodesc {void* id_parent; int /*<<< orphan*/  id_name; int /*<<< orphan*/  id_fix; void* id_number; int /*<<< orphan*/  id_func; int /*<<< orphan*/  id_type; } ;
typedef  void* ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  DONTKNOW ; 
 int /*<<< orphan*/  chgino ; 
 int FUNC0 (int /*<<< orphan*/ ,struct inodesc*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct inodesc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int
FUNC4(ino_t dir, const char *name, ino_t newnum)
{
	struct inodesc idesc;

	FUNC2(&idesc, 0, sizeof(struct inodesc));
	idesc.id_type = DATA;
	idesc.id_func = chgino;
	idesc.id_number = dir;
	idesc.id_fix = DONTKNOW;
	idesc.id_name = FUNC3(name);
	idesc.id_parent = newnum;	/* new value for name */
	return (FUNC0(FUNC1(dir), &idesc));
}