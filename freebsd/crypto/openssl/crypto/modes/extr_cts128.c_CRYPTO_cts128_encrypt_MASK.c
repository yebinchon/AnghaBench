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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  (* cbc128_f ) (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int) ; 

size_t FUNC5(const unsigned char *in, unsigned char *out,
                             size_t len, const void *key,
                             unsigned char ivec[16], cbc128_f cbc)
{
    size_t residue;
    union {
        size_t align;
        unsigned char c[16];
    } tmp;

    if (len <= 16)
        return 0;

    if ((residue = len % 16) == 0)
        residue = 16;

    len -= residue;

    (*cbc) (in, out, len, key, ivec, 1);

    in += len;
    out += len;

#if defined(CBC_HANDLES_TRUNCATED_IO)
    memcpy(tmp.c, out - 16, 16);
    (*cbc) (in, out - 16, residue, key, ivec, 1);
    memcpy(out, tmp.c, residue);
#else
    FUNC1(tmp.c, 0, sizeof(tmp));
    FUNC0(tmp.c, in, residue);
    FUNC0(out, out - 16, residue);
    (*cbc) (tmp.c, out - 16, 16, key, ivec, 1);
#endif
    return len + residue;
}