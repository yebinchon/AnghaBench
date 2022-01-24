#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* h; int* hh; } ;
typedef  TYPE_1__ MDC2_CTX ;
typedef  int /*<<< orphan*/  DES_key_schedule ;
typedef  int DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int**) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned char*) ; 

__attribute__((used)) static void FUNC5(MDC2_CTX *c, const unsigned char *in, size_t len)
{
    register DES_LONG tin0, tin1;
    register DES_LONG ttin0, ttin1;
    DES_LONG d[2], dd[2];
    DES_key_schedule k;
    unsigned char *p;
    size_t i;

    for (i = 0; i < len; i += 8) {
        FUNC3(in, tin0);
        d[0] = dd[0] = tin0;
        FUNC3(in, tin1);
        d[1] = dd[1] = tin1;
        c->h[0] = (c->h[0] & 0x9f) | 0x40;
        c->hh[0] = (c->hh[0] & 0x9f) | 0x20;

        FUNC2(&c->h);
        FUNC1(&c->h, &k);
        FUNC0(d, &k, 1);

        FUNC2(&c->hh);
        FUNC1(&c->hh, &k);
        FUNC0(dd, &k, 1);

        ttin0 = tin0 ^ dd[0];
        ttin1 = tin1 ^ dd[1];
        tin0 ^= d[0];
        tin1 ^= d[1];

        p = c->h;
        FUNC4(tin0, p);
        FUNC4(ttin1, p);
        p = c->hh;
        FUNC4(ttin0, p);
        FUNC4(tin1, p);
    }
}