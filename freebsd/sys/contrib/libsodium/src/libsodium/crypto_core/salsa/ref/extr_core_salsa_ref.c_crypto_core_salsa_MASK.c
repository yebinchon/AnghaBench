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
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 

__attribute__((used)) static void
FUNC3(unsigned char *out, const unsigned char *in,
                  const unsigned char *k, const unsigned char *c,
                  const int rounds)
{
    uint32_t x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14,
        x15;
    uint32_t j0, j1, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14,
        j15;
    int i;

    j0  = x0  = 0x61707865;
    j5  = x5  = 0x3320646e;
    j10 = x10 = 0x79622d32;
    j15 = x15 = 0x6b206574;
    if (c != NULL) {
        j0  = x0  = FUNC0(c + 0);
        j5  = x5  = FUNC0(c + 4);
        j10 = x10 = FUNC0(c + 8);
        j15 = x15 = FUNC0(c + 12);
    }
    j1  = x1  = FUNC0(k + 0);
    j2  = x2  = FUNC0(k + 4);
    j3  = x3  = FUNC0(k + 8);
    j4  = x4  = FUNC0(k + 12);
    j11 = x11 = FUNC0(k + 16);
    j12 = x12 = FUNC0(k + 20);
    j13 = x13 = FUNC0(k + 24);
    j14 = x14 = FUNC0(k + 28);

    j6  = x6  = FUNC0(in + 0);
    j7  = x7  = FUNC0(in + 4);
    j8  = x8  = FUNC0(in + 8);
    j9  = x9  = FUNC0(in + 12);

    for (i = 0; i < rounds; i += 2) {
        x4  ^= FUNC1(x0  + x12, 7);
        x8  ^= FUNC1(x4  + x0, 9);
        x12 ^= FUNC1(x8  + x4, 13);
        x0  ^= FUNC1(x12 + x8, 18);
        x9  ^= FUNC1(x5  + x1, 7);
        x13 ^= FUNC1(x9  + x5, 9);
        x1  ^= FUNC1(x13 + x9, 13);
        x5  ^= FUNC1(x1  + x13, 18);
        x14 ^= FUNC1(x10 + x6, 7);
        x2  ^= FUNC1(x14 + x10, 9);
        x6  ^= FUNC1(x2  + x14, 13);
        x10 ^= FUNC1(x6  + x2, 18);
        x3  ^= FUNC1(x15 + x11, 7);
        x7  ^= FUNC1(x3  + x15, 9);
        x11 ^= FUNC1(x7  + x3, 13);
        x15 ^= FUNC1(x11 + x7, 18);
        x1  ^= FUNC1(x0  + x3, 7);
        x2  ^= FUNC1(x1  + x0, 9);
        x3  ^= FUNC1(x2  + x1, 13);
        x0  ^= FUNC1(x3  + x2, 18);
        x6  ^= FUNC1(x5  + x4, 7);
        x7  ^= FUNC1(x6  + x5, 9);
        x4  ^= FUNC1(x7  + x6, 13);
        x5  ^= FUNC1(x4  + x7, 18);
        x11 ^= FUNC1(x10 + x9, 7);
        x8  ^= FUNC1(x11 + x10, 9);
        x9  ^= FUNC1(x8  + x11, 13);
        x10 ^= FUNC1(x9  + x8, 18);
        x12 ^= FUNC1(x15 + x14, 7);
        x13 ^= FUNC1(x12 + x15, 9);
        x14 ^= FUNC1(x13 + x12, 13);
        x15 ^= FUNC1(x14 + x13, 18);
    }
    FUNC2(out + 0,  x0  + j0);
    FUNC2(out + 4,  x1  + j1);
    FUNC2(out + 8,  x2  + j2);
    FUNC2(out + 12, x3  + j3);
    FUNC2(out + 16, x4  + j4);
    FUNC2(out + 20, x5  + j5);
    FUNC2(out + 24, x6  + j6);
    FUNC2(out + 28, x7  + j7);
    FUNC2(out + 32, x8  + j8);
    FUNC2(out + 36, x9  + j9);
    FUNC2(out + 40, x10 + j10);
    FUNC2(out + 44, x11 + j11);
    FUNC2(out + 48, x12 + j12);
    FUNC2(out + 52, x13 + j13);
    FUNC2(out + 56, x14 + j14);
    FUNC2(out + 60, x15 + j15);
}