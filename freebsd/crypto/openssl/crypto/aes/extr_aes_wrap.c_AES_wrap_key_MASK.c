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
typedef  int /*<<< orphan*/  AES_KEY ;

/* Variables and functions */
 scalar_t__ AES_encrypt ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,unsigned char*,unsigned char const*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC1(AES_KEY *key, const unsigned char *iv,
                 unsigned char *out,
                 const unsigned char *in, unsigned int inlen)
{
    return FUNC0(key, iv, out, in, inlen, (block128_f) AES_encrypt);
}