#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  valType; } ;
typedef  TYPE_1__ tOptionValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  OPARG_TYPE_NONE ; 
 int /*<<< orphan*/  OPARG_TYPE_STRING ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  option_load_mode ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static char const *
FUNC5(char const * name, size_t * nm_len, tOptionValue * val)
{
    char const * scan = FUNC2(name + 1);
    *nm_len = (size_t)(scan - name);
    if (*nm_len > 64)
        return NULL;
    val->valType = OPARG_TYPE_STRING;

    if (FUNC1(*scan)) {
        /*
         * There are attributes following the name.  Parse 'em.
         */
        scan = FUNC3(scan);
        scan = FUNC4(NULL, scan, &option_load_mode, val);
        if (scan == NULL)
            return NULL; /* oops */
    }

    if (! FUNC0(*scan))
        return NULL; /* oops */

    if (*scan == '/') {
        /*
         * Single element XML entries get inserted as an empty string.
         */
        if (*++scan != '>')
            return NULL;
        val->valType = OPARG_TYPE_NONE;
    }
    return scan+1;
}