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
 char* OPENSSL_CONF ; 
 char* FUNC0 (char const*) ; 
 char* FUNC1 () ; 
 char* FUNC2 (size_t,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static char *FUNC7(void)
{
    const char *t;
    size_t len;
    char *p;

    if ((t = FUNC3("OPENSSL_CONF")) != NULL)
        return FUNC0(t);

    t = FUNC1();
    len = FUNC6(t) + 1 + FUNC6(OPENSSL_CONF) + 1;
    p = FUNC2(len, "config filename buffer");
    FUNC5(p, t);
#ifndef OPENSSL_SYS_VMS
    FUNC4(p, "/");
#endif
    FUNC4(p, OPENSSL_CONF);

    return p;
}