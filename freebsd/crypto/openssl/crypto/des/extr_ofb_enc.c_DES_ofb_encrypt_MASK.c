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
typedef  int DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  DES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,unsigned char*,int) ; 

void FUNC5(const unsigned char *in, unsigned char *out, int numbits,
                     long length, DES_key_schedule *schedule,
                     DES_cblock *ivec)
{
    register DES_LONG d0, d1, vv0, vv1, v0, v1, n = (numbits + 7) / 8;
    register DES_LONG mask0, mask1;
    register long l = length;
    register int num = numbits;
    DES_LONG ti[2];
    unsigned char *iv;

    if (num > 64)
        return;
    if (num > 32) {
        mask0 = 0xffffffffL;
        if (num >= 64)
            mask1 = mask0;
        else
            mask1 = (1L << (num - 32)) - 1;
    } else {
        if (num == 32)
            mask0 = 0xffffffffL;
        else
            mask0 = (1L << num) - 1;
        mask1 = 0x00000000L;
    }

    iv = &(*ivec)[0];
    FUNC1(iv, v0);
    FUNC1(iv, v1);
    ti[0] = v0;
    ti[1] = v1;
    while (l-- > 0) {
        ti[0] = v0;
        ti[1] = v1;
        FUNC0((DES_LONG *)ti, schedule, DES_ENCRYPT);
        vv0 = ti[0];
        vv1 = ti[1];
        FUNC2(in, d0, d1, n);
        in += n;
        d0 = (d0 ^ vv0) & mask0;
        d1 = (d1 ^ vv1) & mask1;
        FUNC4(d0, d1, out, n);
        out += n;

        if (num == 32) {
            v0 = v1;
            v1 = vv0;
        } else if (num == 64) {
            v0 = vv0;
            v1 = vv1;
        } else if (num > 32) {  /* && num != 64 */
            v0 = ((v1 >> (num - 32)) | (vv0 << (64 - num))) & 0xffffffffL;
            v1 = ((vv0 >> (num - 32)) | (vv1 << (64 - num))) & 0xffffffffL;
        } else {                /* num < 32 */

            v0 = ((v0 >> num) | (v1 << (32 - num))) & 0xffffffffL;
            v1 = ((v1 >> num) | (vv0 << (32 - num))) & 0xffffffffL;
        }
    }
    iv = &(*ivec)[0];
    FUNC3(v0, iv);
    FUNC3(v1, iv);
    v0 = v1 = d0 = d1 = ti[0] = ti[1] = vv0 = vv1 = 0;
}