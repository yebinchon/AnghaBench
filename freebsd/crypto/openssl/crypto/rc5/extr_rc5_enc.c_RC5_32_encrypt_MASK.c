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
struct TYPE_3__ {unsigned long* data; int rounds; } ;
typedef  TYPE_1__ RC5_32_KEY ;
typedef  unsigned long RC5_32_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned long*,int) ; 

void FUNC1(unsigned long *d, RC5_32_KEY *key)
{
    RC5_32_INT a, b, *s;

    s = key->data;

    a = d[0] + s[0];
    b = d[1] + s[1];
    FUNC0(a, b, s, 2);
    FUNC0(a, b, s, 4);
    FUNC0(a, b, s, 6);
    FUNC0(a, b, s, 8);
    FUNC0(a, b, s, 10);
    FUNC0(a, b, s, 12);
    FUNC0(a, b, s, 14);
    FUNC0(a, b, s, 16);
    if (key->rounds == 12) {
        FUNC0(a, b, s, 18);
        FUNC0(a, b, s, 20);
        FUNC0(a, b, s, 22);
        FUNC0(a, b, s, 24);
    } else if (key->rounds == 16) {
        /* Do a full expansion to avoid a jump */
        FUNC0(a, b, s, 18);
        FUNC0(a, b, s, 20);
        FUNC0(a, b, s, 22);
        FUNC0(a, b, s, 24);
        FUNC0(a, b, s, 26);
        FUNC0(a, b, s, 28);
        FUNC0(a, b, s, 30);
        FUNC0(a, b, s, 32);
    }
    d[0] = a;
    d[1] = b;
}