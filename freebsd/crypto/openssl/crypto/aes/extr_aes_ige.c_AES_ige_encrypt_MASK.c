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
struct TYPE_4__ {int* data; } ;
typedef  TYPE_1__ aes_block_t ;
typedef  int /*<<< orphan*/  AES_KEY ;

/* Variables and functions */
 size_t AES_BLOCK_SIZE ; 
 int const AES_DECRYPT ; 
 int const AES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int /*<<< orphan*/  const*) ; 
 size_t N_WORDS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ UNALIGNED_MEMOPS_ARE_FAST ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,TYPE_1__) ; 

void FUNC6(const unsigned char *in, unsigned char *out,
                     size_t length, const AES_KEY *key,
                     unsigned char *ivec, const int enc)
{
    size_t n;
    size_t len = length;

    if (length == 0)
        return;

    FUNC2(in && out && key && ivec);
    FUNC2((AES_ENCRYPT == enc) || (AES_DECRYPT == enc));
    FUNC2((length % AES_BLOCK_SIZE) == 0);

    len = length / AES_BLOCK_SIZE;

    if (AES_ENCRYPT == enc) {
        if (in != out &&
            (UNALIGNED_MEMOPS_ARE_FAST
             || ((size_t)in | (size_t)out | (size_t)ivec) % sizeof(long) ==
             0)) {
            aes_block_t *ivp = (aes_block_t *) ivec;
            aes_block_t *iv2p = (aes_block_t *) (ivec + AES_BLOCK_SIZE);

            while (len) {
                aes_block_t *inp = (aes_block_t *) in;
                aes_block_t *outp = (aes_block_t *) out;

                for (n = 0; n < N_WORDS; ++n)
                    outp->data[n] = inp->data[n] ^ ivp->data[n];
                FUNC1((unsigned char *)outp->data,
                            (unsigned char *)outp->data, key);
                for (n = 0; n < N_WORDS; ++n)
                    outp->data[n] ^= iv2p->data[n];
                ivp = outp;
                iv2p = inp;
                --len;
                in += AES_BLOCK_SIZE;
                out += AES_BLOCK_SIZE;
            }
            FUNC4(ivec, ivp->data, AES_BLOCK_SIZE);
            FUNC4(ivec + AES_BLOCK_SIZE, iv2p->data, AES_BLOCK_SIZE);
        } else {
            aes_block_t tmp, tmp2;
            aes_block_t iv;
            aes_block_t iv2;

            FUNC3(iv, ivec);
            FUNC3(iv2, ivec + AES_BLOCK_SIZE);

            while (len) {
                FUNC3(tmp, in);
                for (n = 0; n < N_WORDS; ++n)
                    tmp2.data[n] = tmp.data[n] ^ iv.data[n];
                FUNC1((unsigned char *)tmp2.data,
                            (unsigned char *)tmp2.data, key);
                for (n = 0; n < N_WORDS; ++n)
                    tmp2.data[n] ^= iv2.data[n];
                FUNC5(out, tmp2);
                iv = tmp2;
                iv2 = tmp;
                --len;
                in += AES_BLOCK_SIZE;
                out += AES_BLOCK_SIZE;
            }
            FUNC4(ivec, iv.data, AES_BLOCK_SIZE);
            FUNC4(ivec + AES_BLOCK_SIZE, iv2.data, AES_BLOCK_SIZE);
        }
    } else {
        if (in != out &&
            (UNALIGNED_MEMOPS_ARE_FAST
             || ((size_t)in | (size_t)out | (size_t)ivec) % sizeof(long) ==
             0)) {
            aes_block_t *ivp = (aes_block_t *) ivec;
            aes_block_t *iv2p = (aes_block_t *) (ivec + AES_BLOCK_SIZE);

            while (len) {
                aes_block_t tmp;
                aes_block_t *inp = (aes_block_t *) in;
                aes_block_t *outp = (aes_block_t *) out;

                for (n = 0; n < N_WORDS; ++n)
                    tmp.data[n] = inp->data[n] ^ iv2p->data[n];
                FUNC0((unsigned char *)tmp.data,
                            (unsigned char *)outp->data, key);
                for (n = 0; n < N_WORDS; ++n)
                    outp->data[n] ^= ivp->data[n];
                ivp = inp;
                iv2p = outp;
                --len;
                in += AES_BLOCK_SIZE;
                out += AES_BLOCK_SIZE;
            }
            FUNC4(ivec, ivp->data, AES_BLOCK_SIZE);
            FUNC4(ivec + AES_BLOCK_SIZE, iv2p->data, AES_BLOCK_SIZE);
        } else {
            aes_block_t tmp, tmp2;
            aes_block_t iv;
            aes_block_t iv2;

            FUNC3(iv, ivec);
            FUNC3(iv2, ivec + AES_BLOCK_SIZE);

            while (len) {
                FUNC3(tmp, in);
                tmp2 = tmp;
                for (n = 0; n < N_WORDS; ++n)
                    tmp.data[n] ^= iv2.data[n];
                FUNC0((unsigned char *)tmp.data,
                            (unsigned char *)tmp.data, key);
                for (n = 0; n < N_WORDS; ++n)
                    tmp.data[n] ^= iv.data[n];
                FUNC5(out, tmp);
                iv = tmp2;
                iv2 = tmp;
                --len;
                in += AES_BLOCK_SIZE;
                out += AES_BLOCK_SIZE;
            }
            FUNC4(ivec, iv.data, AES_BLOCK_SIZE);
            FUNC4(ivec + AES_BLOCK_SIZE, iv2.data, AES_BLOCK_SIZE);
        }
    }
}