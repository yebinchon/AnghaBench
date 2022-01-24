#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int top; int* d; scalar_t__ neg; } ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int BN_BITS2 ; 
 int BN_BYTES ; 
 int /*<<< orphan*/  BN_F_BN_BN2HEX ; 
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 void** Hex ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char*) ; 

char *FUNC4(const BIGNUM *a)
{
    int i, j, v, z = 0;
    char *buf;
    char *p;

    if (FUNC0(a))
        return FUNC3("0");
    buf = FUNC2(a->top * BN_BYTES * 2 + 2);
    if (buf == NULL) {
        FUNC1(BN_F_BN_BN2HEX, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    p = buf;
    if (a->neg)
        *p++ = '-';
    for (i = a->top - 1; i >= 0; i--) {
        for (j = BN_BITS2 - 8; j >= 0; j -= 8) {
            /* strip leading zeros */
            v = (int)((a->d[i] >> j) & 0xff);
            if (z || v != 0) {
                *p++ = Hex[v >> 4];
                *p++ = Hex[v & 0x0f];
                z = 1;
            }
        }
    }
    *p = '\0';
 err:
    return buf;
}