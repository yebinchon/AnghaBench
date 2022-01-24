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
typedef  int /*<<< orphan*/  DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,long) ; 

void FUNC6(const unsigned char *input, unsigned char *output,
                          long length, DES_key_schedule *ks1,
                          DES_key_schedule *ks2, DES_key_schedule *ks3,
                          DES_cblock *ivec, int enc)
{
    register DES_LONG tin0, tin1;
    register DES_LONG tout0, tout1, xor0, xor1;
    register const unsigned char *in;
    unsigned char *out;
    register long l = length;
    DES_LONG tin[2];
    unsigned char *iv;

    in = input;
    out = output;
    iv = &(*ivec)[0];

    if (enc) {
        FUNC2(iv, tout0);
        FUNC2(iv, tout1);
        for (l -= 8; l >= 0; l -= 8) {
            FUNC2(in, tin0);
            FUNC2(in, tin1);
            tin0 ^= tout0;
            tin1 ^= tout1;

            tin[0] = tin0;
            tin[1] = tin1;
            FUNC1((DES_LONG *)tin, ks1, ks2, ks3);
            tout0 = tin[0];
            tout1 = tin[1];

            FUNC4(tout0, out);
            FUNC4(tout1, out);
        }
        if (l != -8) {
            FUNC3(in, tin0, tin1, l + 8);
            tin0 ^= tout0;
            tin1 ^= tout1;

            tin[0] = tin0;
            tin[1] = tin1;
            FUNC1((DES_LONG *)tin, ks1, ks2, ks3);
            tout0 = tin[0];
            tout1 = tin[1];

            FUNC4(tout0, out);
            FUNC4(tout1, out);
        }
        iv = &(*ivec)[0];
        FUNC4(tout0, iv);
        FUNC4(tout1, iv);
    } else {
        register DES_LONG t0, t1;

        FUNC2(iv, xor0);
        FUNC2(iv, xor1);
        for (l -= 8; l >= 0; l -= 8) {
            FUNC2(in, tin0);
            FUNC2(in, tin1);

            t0 = tin0;
            t1 = tin1;

            tin[0] = tin0;
            tin[1] = tin1;
            FUNC0((DES_LONG *)tin, ks1, ks2, ks3);
            tout0 = tin[0];
            tout1 = tin[1];

            tout0 ^= xor0;
            tout1 ^= xor1;
            FUNC4(tout0, out);
            FUNC4(tout1, out);
            xor0 = t0;
            xor1 = t1;
        }
        if (l != -8) {
            FUNC2(in, tin0);
            FUNC2(in, tin1);

            t0 = tin0;
            t1 = tin1;

            tin[0] = tin0;
            tin[1] = tin1;
            FUNC0((DES_LONG *)tin, ks1, ks2, ks3);
            tout0 = tin[0];
            tout1 = tin[1];

            tout0 ^= xor0;
            tout1 ^= xor1;
            FUNC5(tout0, tout1, out, l + 8);
            xor0 = t0;
            xor1 = t1;
        }

        iv = &(*ivec)[0];
        FUNC4(xor0, iv);
        FUNC4(xor1, iv);
    }
    tin0 = tin1 = tout0 = tout1 = xor0 = xor1 = 0;
    tin[0] = tin[1] = 0;
}