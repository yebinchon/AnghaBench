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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 

int
FUNC3(unsigned char *out, const unsigned char *in,
                      const unsigned char *k, const unsigned char *c)
{
    int      i;
    uint32_t x0, x1, x2, x3, x4, x5, x6, x7;
    uint32_t x8, x9, x10, x11, x12, x13, x14, x15;

    if (c == NULL) {
        x0 = 0x61707865;
        x1 = 0x3320646e;
        x2 = 0x79622d32;
        x3 = 0x6b206574;
    } else {
        x0 = FUNC0(c +  0);
        x1 = FUNC0(c +  4);
        x2 = FUNC0(c +  8);
        x3 = FUNC0(c + 12);
    }
    x4  = FUNC0(k +  0);
    x5  = FUNC0(k +  4);
    x6  = FUNC0(k +  8);
    x7  = FUNC0(k + 12);
    x8  = FUNC0(k + 16);
    x9  = FUNC0(k + 20);
    x10 = FUNC0(k + 24);
    x11 = FUNC0(k + 28);
    x12 = FUNC0(in +  0);
    x13 = FUNC0(in +  4);
    x14 = FUNC0(in +  8);
    x15 = FUNC0(in + 12);

    for (i = 0; i < 10; i++) {
        FUNC1(x0, x4,  x8, x12);
        FUNC1(x1, x5,  x9, x13);
        FUNC1(x2, x6, x10, x14);
        FUNC1(x3, x7, x11, x15);
        FUNC1(x0, x5, x10, x15);
        FUNC1(x1, x6, x11, x12);
        FUNC1(x2, x7,  x8, x13);
        FUNC1(x3, x4,  x9, x14);
    }

    FUNC2(out +  0, x0);
    FUNC2(out +  4, x1);
    FUNC2(out +  8, x2);
    FUNC2(out + 12, x3);
    FUNC2(out + 16, x12);
    FUNC2(out + 20, x13);
    FUNC2(out + 24, x14);
    FUNC2(out + 28, x15);

    return 0;
}