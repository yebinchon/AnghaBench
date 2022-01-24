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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  DSA ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_F_DSA_PARAM_DECODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_DSA_LIB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned char const**,int) ; 

__attribute__((used)) static int FUNC3(EVP_PKEY *pkey,
                            const unsigned char **pder, int derlen)
{
    DSA *dsa;

    if ((dsa = FUNC2(NULL, pder, derlen)) == NULL) {
        FUNC0(DSA_F_DSA_PARAM_DECODE, ERR_R_DSA_LIB);
        return 0;
    }
    FUNC1(pkey, dsa);
    return 1;
}