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
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,long*,unsigned char*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  EVP_CTRL_SET_RC2_KEY_BITS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int EVP_MAX_IV_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
    long num = 0;
    int i = 0;
    int key_bits;
    unsigned int l;
    unsigned char iv[EVP_MAX_IV_LENGTH];

    if (type != NULL) {
        l = FUNC2(c);
        FUNC5(l <= sizeof(iv));
        i = FUNC0(type, &num, iv, l);
        if (i != (int)l)
            return -1;
        key_bits = FUNC6((int)num);
        if (!key_bits)
            return -1;
        if (i > 0 && !FUNC4(c, NULL, NULL, NULL, iv, -1))
            return -1;
        if (FUNC1(c, EVP_CTRL_SET_RC2_KEY_BITS, key_bits,
                                NULL) <= 0
                || FUNC3(c, key_bits / 8) <= 0)
            return -1;
    }
    return i;
}