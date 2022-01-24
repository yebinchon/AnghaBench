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
typedef  int /*<<< orphan*/  CAMELLIA_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/  const*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char*,size_t,int /*<<< orphan*/  const*,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ Camellia_decrypt ; 
 scalar_t__ Camellia_encrypt ; 

void FUNC2(const unsigned char *in, unsigned char *out,
                          size_t len, const CAMELLIA_KEY *key,
                          unsigned char *ivec, const int enc)
{

    if (enc)
        FUNC1(in, out, len, key, ivec,
                              (block128_f) Camellia_encrypt);
    else
        FUNC0(in, out, len, key, ivec,
                              (block128_f) Camellia_decrypt);
}