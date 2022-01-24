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
typedef  int /*<<< orphan*/  block128_f ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,int,void const*,unsigned char*,int,int /*<<< orphan*/ ) ; 

void FUNC1(const unsigned char *in, unsigned char *out,
                             size_t length, const void *key,
                             unsigned char ivec[16], int *num,
                             int enc, block128_f block)
{
    size_t n;

    for (n = 0; n < length; ++n)
        FUNC0(&in[n], &out[n], 8, key, ivec, enc, block);
}