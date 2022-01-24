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
 int EVP_PKEY_DSA ; 
 int EVP_PKEY_EC ; 
 int EVP_PKEY_RSA ; 
 int EVP_PKEY_RSA_PSS ; 
 int NID_undef ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static void FUNC3(int *psig, int *phash, const char *str)
{
    if (FUNC2(str, "RSA") == 0) {
        *psig = EVP_PKEY_RSA;
    } else if (FUNC2(str, "RSA-PSS") == 0 || FUNC2(str, "PSS") == 0) {
        *psig = EVP_PKEY_RSA_PSS;
    } else if (FUNC2(str, "DSA") == 0) {
        *psig = EVP_PKEY_DSA;
    } else if (FUNC2(str, "ECDSA") == 0) {
        *psig = EVP_PKEY_EC;
    } else {
        *phash = FUNC1(str);
        if (*phash == NID_undef)
            *phash = FUNC0(str);
    }
}