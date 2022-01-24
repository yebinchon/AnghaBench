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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,size_t,unsigned int const*,unsigned int const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,size_t,unsigned int const*,unsigned int const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,size_t,unsigned int const*,unsigned int const*) ; 
 int OPENSSL_ppccap_P ; 
 int PPC_ALTIVEC ; 
 int PPC_CRYPTO207 ; 

void FUNC3(unsigned char *out, const unsigned char *inp,
                    size_t len, const unsigned int key[8],
                    const unsigned int counter[4])
{
    OPENSSL_ppccap_P & PPC_CRYPTO207
        ? FUNC2(out, inp, len, key, counter)
        : OPENSSL_ppccap_P & PPC_ALTIVEC
            ? FUNC1(out, inp, len, key, counter)
            : FUNC0(out, inp, len, key, counter);
}