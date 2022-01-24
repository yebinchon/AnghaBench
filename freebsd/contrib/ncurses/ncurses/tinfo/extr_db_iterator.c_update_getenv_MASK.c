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
struct TYPE_2__ {char* name; char* value; } ;
typedef  size_t DBDIRS ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int TRUE ; 
 size_t dbdLAST ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 TYPE_1__* my_vars ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static bool
FUNC5(const char *name, DBDIRS which)
{
    bool result = FALSE;

    if (which < dbdLAST) {
	char *value;

	if ((value = FUNC2(name)) == 0 || (value = FUNC4(value)) == 0) {
	    ;
	} else if (my_vars[which].name == 0 || FUNC3(my_vars[which].name, name)) {
	    FUNC0(my_vars[which].value);
	    my_vars[which].name = name;
	    my_vars[which].value = value;
	    result = TRUE;
	} else if ((my_vars[which].value != 0) ^ (value != 0)) {
	    FUNC0(my_vars[which].value);
	    my_vars[which].value = value;
	    result = TRUE;
	} else if (value != 0 && FUNC3(value, my_vars[which].value)) {
	    FUNC0(my_vars[which].value);
	    my_vars[which].value = value;
	    result = TRUE;
	} else {
	    FUNC1(value);
	}
    }
    return result;
}