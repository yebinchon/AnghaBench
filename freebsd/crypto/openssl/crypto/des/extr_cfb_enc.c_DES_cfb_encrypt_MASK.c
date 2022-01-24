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
typedef  int /*<<< orphan*/  sh ;
typedef  int /*<<< orphan*/  DES_key_schedule ;
typedef  unsigned char* DES_cblock ;
typedef  unsigned int DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  DES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 

void FUNC7(const unsigned char *in, unsigned char *out, int numbits,
                     long length, DES_key_schedule *schedule,
                     DES_cblock *ivec, int enc)
{
    register DES_LONG d0, d1, v0, v1;
    register unsigned long l = length;
    register int num = numbits / 8, n = (numbits + 7) / 8, i, rem =
        numbits % 8;
    DES_LONG ti[2];
    unsigned char *iv;
#ifndef L_ENDIAN
    unsigned char ovec[16];
#else
    unsigned int sh[4];
    unsigned char *ovec = (unsigned char *)sh;

    /* I kind of count that compiler optimizes away this assertion, */
    assert(sizeof(sh[0]) == 4); /* as this holds true for all, */
    /* but 16-bit platforms...      */

#endif

    if (numbits <= 0 || numbits > 64)
        return;
    iv = &(*ivec)[0];
    FUNC2(iv, v0);
    FUNC2(iv, v1);
    if (enc) {
        while (l >= (unsigned long)n) {
            l -= n;
            ti[0] = v0;
            ti[1] = v1;
            FUNC0((DES_LONG *)ti, schedule, DES_ENCRYPT);
            FUNC3(in, d0, d1, n);
            in += n;
            d0 ^= ti[0];
            d1 ^= ti[1];
            FUNC5(d0, d1, out, n);
            out += n;
            /*
             * 30-08-94 - eay - changed because l>>32 and l<<32 are bad under
             * gcc :-(
             */
            if (numbits == 32) {
                v0 = v1;
                v1 = d0;
            } else if (numbits == 64) {
                v0 = d0;
                v1 = d1;
            } else {
#ifndef L_ENDIAN
                iv = &ovec[0];
                FUNC4(v0, iv);
                FUNC4(v1, iv);
                FUNC4(d0, iv);
                FUNC4(d1, iv);
#else
                sh[0] = v0, sh[1] = v1, sh[2] = d0, sh[3] = d1;
#endif
                if (rem == 0)
                    FUNC6(ovec, ovec + num, 8);
                else
                    for (i = 0; i < 8; ++i)
                        ovec[i] = ovec[i + num] << rem |
                            ovec[i + num + 1] >> (8 - rem);
#ifdef L_ENDIAN
                v0 = sh[0], v1 = sh[1];
#else
                iv = &ovec[0];
                FUNC2(iv, v0);
                FUNC2(iv, v1);
#endif
            }
        }
    } else {
        while (l >= (unsigned long)n) {
            l -= n;
            ti[0] = v0;
            ti[1] = v1;
            FUNC0((DES_LONG *)ti, schedule, DES_ENCRYPT);
            FUNC3(in, d0, d1, n);
            in += n;
            /*
             * 30-08-94 - eay - changed because l>>32 and l<<32 are bad under
             * gcc :-(
             */
            if (numbits == 32) {
                v0 = v1;
                v1 = d0;
            } else if (numbits == 64) {
                v0 = d0;
                v1 = d1;
            } else {
#ifndef L_ENDIAN
                iv = &ovec[0];
                FUNC4(v0, iv);
                FUNC4(v1, iv);
                FUNC4(d0, iv);
                FUNC4(d1, iv);
#else
                sh[0] = v0, sh[1] = v1, sh[2] = d0, sh[3] = d1;
#endif
                if (rem == 0)
                    FUNC6(ovec, ovec + num, 8);
                else
                    for (i = 0; i < 8; ++i)
                        ovec[i] = ovec[i + num] << rem |
                            ovec[i + num + 1] >> (8 - rem);
#ifdef L_ENDIAN
                v0 = sh[0], v1 = sh[1];
#else
                iv = &ovec[0];
                FUNC2(iv, v0);
                FUNC2(iv, v1);
#endif
            }
            d0 ^= ti[0];
            d1 ^= ti[1];
            FUNC5(d0, d1, out, n);
            out += n;
        }
    }
    iv = &(*ivec)[0];
    FUNC4(v0, iv);
    FUNC4(v1, iv);
    v0 = v1 = d0 = d1 = ti[0] = ti[1] = 0;
}