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
typedef  int /*<<< orphan*/  (* block128_f ) (unsigned char const*,unsigned char*,void const*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,size_t,void const*,unsigned char*,int /*<<< orphan*/  (*) (unsigned char const*,unsigned char*,void const*)) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned char*,void const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,unsigned char*,void const*) ; 

size_t FUNC4(const unsigned char *in,
                                   unsigned char *out, size_t len,
                                   const void *key, unsigned char ivec[16],
                                   block128_f block)
{
    size_t residue, n;
    union {
        size_t align;
        unsigned char c[32];
    } tmp;

    if (len <= 16)
        return 0;

    if ((residue = len % 16) == 0)
        residue = 16;

    len -= 16 + residue;

    if (len) {
        FUNC0(in, out, len, key, ivec, block);
        in += len;
        out += len;
    }

    (*block) (in, tmp.c + 16, key);

    FUNC1(tmp.c, tmp.c + 16, 16);
    FUNC1(tmp.c, in + 16, residue);
    (*block) (tmp.c, tmp.c, key);

    for (n = 0; n < 16; ++n) {
        unsigned char c = in[n];
        out[n] = tmp.c[n] ^ ivec[n];
        ivec[n] = c;
    }
    for (residue += 16; n < residue; ++n)
        out[n] = tmp.c[n] ^ in[n];

    return 16 + len + residue;
}