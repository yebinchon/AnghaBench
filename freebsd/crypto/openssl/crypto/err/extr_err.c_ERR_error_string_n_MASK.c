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
typedef  int /*<<< orphan*/  rsbuf ;
typedef  int /*<<< orphan*/  lsbuf ;
typedef  int /*<<< orphan*/  fsbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,unsigned long,...) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long) ; 
 char* FUNC4 (unsigned long) ; 
 char* FUNC5 (unsigned long) ; 
 char* FUNC6 (unsigned long) ; 
 size_t FUNC7 (char*) ; 

void FUNC8(unsigned long e, char *buf, size_t len)
{
    char lsbuf[64], fsbuf[64], rsbuf[64];
    const char *ls, *fs, *rs;
    unsigned long l, f, r;

    if (len == 0)
        return;

    l = FUNC2(e);
    ls = FUNC5(e);
    if (ls == NULL) {
        FUNC0(lsbuf, sizeof(lsbuf), "lib(%lu)", l);
        ls = lsbuf;
    }

    fs = FUNC4(e);
    f = FUNC1(e);
    if (fs == NULL) {
        FUNC0(fsbuf, sizeof(fsbuf), "func(%lu)", f);
        fs = fsbuf;
    }

    rs = FUNC6(e);
    r = FUNC3(e);
    if (rs == NULL) {
        FUNC0(rsbuf, sizeof(rsbuf), "reason(%lu)", r);
        rs = rsbuf;
    }

    FUNC0(buf, len, "error:%08lX:%s:%s:%s", e, ls, fs, rs);
    if (FUNC7(buf) == len - 1) {
        /* Didn't fit; use a minimal format. */
        FUNC0(buf, len, "err:%lx:%lx:%lx:%lx", e, l, f, r);
    }
}