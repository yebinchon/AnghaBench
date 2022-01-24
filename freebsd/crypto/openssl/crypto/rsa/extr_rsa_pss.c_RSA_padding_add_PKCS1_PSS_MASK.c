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
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 

int FUNC1(RSA *rsa, unsigned char *EM,
                              const unsigned char *mHash,
                              const EVP_MD *Hash, int sLen)
{
    return FUNC0(rsa, EM, mHash, Hash, NULL, sLen);
}