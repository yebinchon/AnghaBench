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
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static char *
FUNC5(char *src)
{
    char *dst = 0;

    while (FUNC2(FUNC0(*src)))
	src++;

    if (*src != '\0') {
	size_t len;

	if ((dst = FUNC3(src)) == NULL) {
	    FUNC1("strdup");
	} else {
	    len = FUNC4(dst);
	    while (--len != 0 && FUNC2(FUNC0(dst[len])))
		dst[len] = '\0';
	}
    }
    return dst;
}