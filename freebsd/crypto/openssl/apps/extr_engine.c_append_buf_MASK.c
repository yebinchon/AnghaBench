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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int) ; 
 char* FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(char **buf, int *size, const char *s)
{
    const int expand = 256;
    int len = FUNC4(s) + 1;
    char *p = *buf;

    if (p == NULL) {
        *size = ((len + expand - 1) / expand) * expand;
        p = *buf = FUNC2(*size, "engine buffer");
    } else {
        const int blen = FUNC4(p);

        if (blen > 0)
            len += 2 + blen;

        if (len > *size) {
            *size = ((len + expand - 1) / expand) * expand;
            p = FUNC1(p, *size);
            if (p == NULL) {
                FUNC0(*buf);
                *buf = NULL;
                return 0;
            }
            *buf = p;
        }

        if (blen > 0) {
            p += blen;
            *p++ = ',';
            *p++ = ' ';
        }
    }

    FUNC3(p, s);
    return 1;
}