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
typedef  int /*<<< orphan*/  AES_KEY ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int const AES_DECRYPT ; 
 int const AES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,int) ; 

void FUNC4(const unsigned char *in, unsigned char *out,
                        size_t length, const AES_KEY *key,
                        const AES_KEY *key2, const unsigned char *ivec,
                        const int enc)
{
    size_t n;
    size_t len = length;
    unsigned char tmp[AES_BLOCK_SIZE];
    unsigned char tmp2[AES_BLOCK_SIZE];
    unsigned char tmp3[AES_BLOCK_SIZE];
    unsigned char prev[AES_BLOCK_SIZE];
    const unsigned char *iv;
    const unsigned char *iv2;

    FUNC2(in && out && key && ivec);
    FUNC2((AES_ENCRYPT == enc) || (AES_DECRYPT == enc));
    FUNC2((length % AES_BLOCK_SIZE) == 0);

    if (AES_ENCRYPT == enc) {
        /*
         * XXX: Do a separate case for when in != out (strictly should check
         * for overlap, too)
         */

        /* First the forward pass */
        iv = ivec;
        iv2 = ivec + AES_BLOCK_SIZE;
        while (len >= AES_BLOCK_SIZE) {
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] = in[n] ^ iv[n];
            FUNC1(out, out, key);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] ^= iv2[n];
            iv = out;
            FUNC3(prev, in, AES_BLOCK_SIZE);
            iv2 = prev;
            len -= AES_BLOCK_SIZE;
            in += AES_BLOCK_SIZE;
            out += AES_BLOCK_SIZE;
        }

        /* And now backwards */
        iv = ivec + AES_BLOCK_SIZE * 2;
        iv2 = ivec + AES_BLOCK_SIZE * 3;
        len = length;
        while (len >= AES_BLOCK_SIZE) {
            out -= AES_BLOCK_SIZE;
            /*
             * XXX: reduce copies by alternating between buffers
             */
            FUNC3(tmp, out, AES_BLOCK_SIZE);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] ^= iv[n];
            /*
             * hexdump(stdout, "out ^ iv", out, AES_BLOCK_SIZE);
             */
            FUNC1(out, out, key);
            /*
             * hexdump(stdout,"enc", out, AES_BLOCK_SIZE);
             */
            /*
             * hexdump(stdout,"iv2", iv2, AES_BLOCK_SIZE);
             */
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] ^= iv2[n];
            /*
             * hexdump(stdout,"out", out, AES_BLOCK_SIZE);
             */
            iv = out;
            FUNC3(prev, tmp, AES_BLOCK_SIZE);
            iv2 = prev;
            len -= AES_BLOCK_SIZE;
        }
    } else {
        /* First backwards */
        iv = ivec + AES_BLOCK_SIZE * 2;
        iv2 = ivec + AES_BLOCK_SIZE * 3;
        in += length;
        out += length;
        while (len >= AES_BLOCK_SIZE) {
            in -= AES_BLOCK_SIZE;
            out -= AES_BLOCK_SIZE;
            FUNC3(tmp, in, AES_BLOCK_SIZE);
            FUNC3(tmp2, in, AES_BLOCK_SIZE);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                tmp[n] ^= iv2[n];
            FUNC0(tmp, out, key);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] ^= iv[n];
            FUNC3(tmp3, tmp2, AES_BLOCK_SIZE);
            iv = tmp3;
            iv2 = out;
            len -= AES_BLOCK_SIZE;
        }

        /* And now forwards */
        iv = ivec;
        iv2 = ivec + AES_BLOCK_SIZE;
        len = length;
        while (len >= AES_BLOCK_SIZE) {
            FUNC3(tmp, out, AES_BLOCK_SIZE);
            FUNC3(tmp2, out, AES_BLOCK_SIZE);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                tmp[n] ^= iv2[n];
            FUNC0(tmp, out, key);
            for (n = 0; n < AES_BLOCK_SIZE; ++n)
                out[n] ^= iv[n];
            FUNC3(tmp3, tmp2, AES_BLOCK_SIZE);
            iv = tmp3;
            iv2 = out;
            len -= AES_BLOCK_SIZE;
            in += AES_BLOCK_SIZE;
            out += AES_BLOCK_SIZE;
        }
    }
}