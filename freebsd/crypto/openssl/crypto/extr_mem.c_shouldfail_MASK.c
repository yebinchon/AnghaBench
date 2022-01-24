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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 int FUNC2 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,int,scalar_t__) ; 
 scalar_t__ md_count ; 
 int md_fail_percent ; 
 scalar_t__ md_tracefd ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 () ; 
 int FUNC7 (char*) ; 
 int FUNC8 (scalar_t__,char*,int) ; 

__attribute__((used)) static int FUNC9(void)
{
    int roll = (int)(FUNC6() % 100);
    int shoulditfail = roll < md_fail_percent;
# ifndef _WIN32
/* suppressed on Windows as POSIX-like file descriptors are non-inheritable */
    int len;
    char buff[80];

    if (md_tracefd > 0) {
        FUNC0(buff, sizeof(buff),
                     "%c C%ld %%%d R%d\n",
                     shoulditfail ? '-' : '+', md_count, md_fail_percent, roll);
        len = FUNC7(buff);
        if (FUNC8(md_tracefd, buff, len) != len)
            FUNC5("shouldfail write failed");
#  ifndef OPENSSL_NO_CRYPTO_MDEBUG_BACKTRACE
        if (shoulditfail) {
            void *addrs[30];
            int num = FUNC2(addrs, FUNC1(addrs));

            FUNC3(addrs, num, md_tracefd);
        }
#  endif
    }
# endif

    if (md_count) {
        /* If we used up this one, go to the next. */
        if (--md_count == 0)
            FUNC4();
    }

    return shoulditfail;
}