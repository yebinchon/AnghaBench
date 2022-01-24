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
struct type_handler {int /*<<< orphan*/  c_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  assignment; } ;
struct assignment {TYPE_1__ u; } ;

/* Variables and functions */
 struct assignment* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct type_handler* FUNC1 (struct assignment*) ; 
 struct assignment* FUNC2 (struct assignment*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct assignment *opt1, const char *name)
{
    struct assignment *tmp;

    FUNC4(0, "struct %s_options {\n", name);

    for(tmp = opt1;
	tmp != NULL;
	tmp = FUNC2(tmp, "option")) {
	struct assignment *type;
	struct type_handler *th;
	char *s;

	s = FUNC5(tmp->u.assignment);
	type = FUNC0(tmp->u.assignment, "type");
	th = FUNC1(type);
	FUNC4(1, "%s %s;\n", th->c_type, s);
	FUNC3(s);
    }
    FUNC4(0, "};\n");
}