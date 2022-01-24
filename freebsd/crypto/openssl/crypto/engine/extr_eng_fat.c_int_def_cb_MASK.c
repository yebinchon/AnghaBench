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
 unsigned int ENGINE_METHOD_ALL ; 
 unsigned int ENGINE_METHOD_CIPHERS ; 
 unsigned int ENGINE_METHOD_DH ; 
 unsigned int ENGINE_METHOD_DIGESTS ; 
 unsigned int ENGINE_METHOD_DSA ; 
 unsigned int ENGINE_METHOD_EC ; 
 unsigned int ENGINE_METHOD_PKEY_ASN1_METHS ; 
 unsigned int ENGINE_METHOD_PKEY_METHS ; 
 unsigned int ENGINE_METHOD_RAND ; 
 unsigned int ENGINE_METHOD_RSA ; 
 scalar_t__ FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC1(const char *alg, int len, void *arg)
{
    unsigned int *pflags = arg;
    if (alg == NULL)
        return 0;
    if (FUNC0(alg, "ALL", len) == 0)
        *pflags |= ENGINE_METHOD_ALL;
    else if (FUNC0(alg, "RSA", len) == 0)
        *pflags |= ENGINE_METHOD_RSA;
    else if (FUNC0(alg, "DSA", len) == 0)
        *pflags |= ENGINE_METHOD_DSA;
    else if (FUNC0(alg, "DH", len) == 0)
        *pflags |= ENGINE_METHOD_DH;
    else if (FUNC0(alg, "EC", len) == 0)
        *pflags |= ENGINE_METHOD_EC;
    else if (FUNC0(alg, "RAND", len) == 0)
        *pflags |= ENGINE_METHOD_RAND;
    else if (FUNC0(alg, "CIPHERS", len) == 0)
        *pflags |= ENGINE_METHOD_CIPHERS;
    else if (FUNC0(alg, "DIGESTS", len) == 0)
        *pflags |= ENGINE_METHOD_DIGESTS;
    else if (FUNC0(alg, "PKEY", len) == 0)
        *pflags |= ENGINE_METHOD_PKEY_METHS | ENGINE_METHOD_PKEY_ASN1_METHS;
    else if (FUNC0(alg, "PKEY_CRYPTO", len) == 0)
        *pflags |= ENGINE_METHOD_PKEY_METHS;
    else if (FUNC0(alg, "PKEY_ASN1", len) == 0)
        *pflags |= ENGINE_METHOD_PKEY_ASN1_METHS;
    else
        return 0;
    return 1;
}