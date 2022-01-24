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
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

int FUNC6(X509 *x, const char *startdate, const char *enddate,
                   int days)
{
    if (startdate == NULL || FUNC5(startdate, "today") == 0) {
        if (FUNC3(FUNC2(x), 0) == NULL)
            return 0;
    } else {
        if (!FUNC0(FUNC2(x), startdate))
            return 0;
    }
    if (enddate == NULL) {
        if (FUNC4(FUNC1(x), days, 0, NULL)
            == NULL)
            return 0;
    } else if (!FUNC0(FUNC1(x), enddate)) {
        return 0;
    }
    return 1;
}