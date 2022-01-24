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
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  X509_F_X509_NAME_PRINT ; 
 char* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char) ; 

int FUNC5(BIO *bp, const X509_NAME *name, int obase)
{
    char *s, *c, *b;
    int l, i;

    l = 80 - 2 - obase;

    b = FUNC2(name, NULL, 0);
    if (!b)
        return 0;
    if (!*b) {
        FUNC1(b);
        return 1;
    }
    s = b + 1;                  /* skip the first slash */

    c = s;
    for (;;) {
        if (((*s == '/') &&
             (FUNC4(s[1]) && ((s[2] == '=') ||
                                (FUNC4(s[2]) && (s[3] == '='))
              ))) || (*s == '\0'))
        {
            i = s - c;
            if (FUNC0(bp, c, i) != i)
                goto err;
            c = s + 1;          /* skip following slash */
            if (*s != '\0') {
                if (FUNC0(bp, ", ", 2) != 2)
                    goto err;
            }
            l--;
        }
        if (*s == '\0')
            break;
        s++;
        l--;
    }

    FUNC1(b);
    return 1;
 err:
    FUNC3(X509_F_X509_NAME_PRINT, ERR_R_BUF_LIB);
    FUNC1(b);
    return 0;
}