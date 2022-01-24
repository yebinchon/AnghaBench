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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 size_t FUNC6 (char const*) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static const char *
FUNC8(char **append, const char *value)
{
    char *result = *append;
    char *copied = FUNC7(value);

    if (copied != 0 && *copied != '\0') {
	const char *comma = ",";
	size_t need = 1 + FUNC6(copied);

	if (*copied == ',')
	    comma = "";
	else if (!FUNC2(*append))
	    comma = "";

	need += FUNC6(comma);
	if (*append != 0)
	    need += FUNC6(*append);

	result = FUNC5(need);
	if (result == 0)
	    FUNC3("add_to_tab_list");

	*result = '\0';
	if (*append != 0) {
	    FUNC1(result, *append, need);
	    FUNC4(*append);
	}
	FUNC0(result, comma, need);
	FUNC0(result, copied, need);

	*append = result;
    }
    return result;
}