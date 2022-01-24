#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  assignment; } ;
struct assignment {TYPE_1__ u; struct assignment* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hname ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct assignment *as)
{
    struct assignment *a;
    FUNC0(0, "#include <stdio.h>\n");
    FUNC0(0, "#include <getarg.h>\n");
    FUNC0(0, "#include <sl.h>\n");
    FUNC0(0, "#include \"%s\"\n\n", hname);

    FUNC3(0, "#include <stdio.h>\n");
    FUNC3(0, "#include <sl.h>\n");
    FUNC3(0, "\n");


    for(a = as; a != NULL; a = a->next)
	FUNC2(a->u.assignment);

    FUNC0(0, "SL_cmd commands[] = {\n");
    for(a = as; a != NULL; a = a->next)
	FUNC1(a->u.assignment);
    FUNC0(1, "{ NULL }\n");
    FUNC0(0, "};\n");

    FUNC3(0, "extern SL_cmd commands[];\n");
}