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
typedef  int /*<<< orphan*/  DES_key_schedule ;
typedef  unsigned char* DES_cblock ;
typedef  scalar_t__ DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  DES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned char*) ; 

void FUNC3(register const unsigned char *in,
                       register unsigned char *out, long length,
                       DES_key_schedule *schedule, DES_cblock *ivec, int *num)
{
    register DES_LONG v0, v1, t;
    register int n = *num;
    register long l = length;
    DES_cblock d;
    register unsigned char *dp;
    DES_LONG ti[2];
    unsigned char *iv;
    int save = 0;

    iv = &(*ivec)[0];
    FUNC1(iv, v0);
    FUNC1(iv, v1);
    ti[0] = v0;
    ti[1] = v1;
    dp = d;
    FUNC2(v0, dp);
    FUNC2(v1, dp);
    while (l--) {
        if (n == 0) {
            FUNC0(ti, schedule, DES_ENCRYPT);
            dp = d;
            t = ti[0];
            FUNC2(t, dp);
            t = ti[1];
            FUNC2(t, dp);
            save++;
        }
        *(out++) = *(in++) ^ d[n];
        n = (n + 1) & 0x07;
    }
    if (save) {
        v0 = ti[0];
        v1 = ti[1];
        iv = &(*ivec)[0];
        FUNC2(v0, iv);
        FUNC2(v1, iv);
    }
    t = v0 = v1 = ti[0] = ti[1] = 0;
    *num = n;
}