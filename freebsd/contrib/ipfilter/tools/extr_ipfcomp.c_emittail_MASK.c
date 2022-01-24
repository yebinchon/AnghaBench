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
struct TYPE_3__ {int fg_flags; char* fg_name; struct TYPE_3__* fg_next; } ;
typedef  TYPE_1__ frgroup_t ;

/* Variables and functions */
 int FR_INQUE ; 
 int /*<<< orphan*/  cfile ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* groups ; 

__attribute__((used)) static void FUNC1()
{
	frgroup_t *g;

	FUNC0(cfile, "\n\
int ipfrule_add()\n\
{\n\
	int err;\n\
\n");
	for (g = groups; g != NULL; g = g->fg_next)
		FUNC0(cfile, "\
	err = ipfrule_add_%s_%s();\n\
	if (err != 0)\n\
		return err;\n",
			(g->fg_flags & FR_INQUE) ? "in" : "out", g->fg_name);
	FUNC0(cfile, "\
	return 0;\n");
	FUNC0(cfile, "}\n\
\n");

	FUNC0(cfile, "\n\
int ipfrule_remove()\n\
{\n\
	int err;\n\
\n");
	for (g = groups; g != NULL; g = g->fg_next)
		FUNC0(cfile, "\
	err = ipfrule_remove_%s_%s();\n\
	if (err != 0)\n\
		return err;\n",
			(g->fg_flags & FR_INQUE) ? "in" : "out", g->fg_name);
	FUNC0(cfile, "\
	return 0;\n");
	FUNC0(cfile, "}\n");
}