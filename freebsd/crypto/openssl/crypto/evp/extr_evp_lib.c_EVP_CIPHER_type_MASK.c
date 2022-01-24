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
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
#define  NID_aes_128_cfb1 147 
#define  NID_aes_128_cfb128 146 
#define  NID_aes_128_cfb8 145 
#define  NID_aes_192_cfb1 144 
#define  NID_aes_192_cfb128 143 
#define  NID_aes_192_cfb8 142 
#define  NID_aes_256_cfb1 141 
#define  NID_aes_256_cfb128 140 
#define  NID_aes_256_cfb8 139 
#define  NID_des_cfb1 138 
#define  NID_des_cfb64 137 
#define  NID_des_cfb8 136 
#define  NID_des_ede3_cfb1 135 
#define  NID_des_ede3_cfb64 134 
#define  NID_des_ede3_cfb8 133 
#define  NID_rc2_40_cbc 132 
#define  NID_rc2_64_cbc 131 
#define  NID_rc2_cbc 130 
#define  NID_rc4 129 
#define  NID_rc4_40 128 
 int NID_undef ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

int FUNC4(const EVP_CIPHER *ctx)
{
    int nid;
    ASN1_OBJECT *otmp;
    nid = FUNC1(ctx);

    switch (nid) {

    case NID_rc2_cbc:
    case NID_rc2_64_cbc:
    case NID_rc2_40_cbc:

        return NID_rc2_cbc;

    case NID_rc4:
    case NID_rc4_40:

        return NID_rc4;

    case NID_aes_128_cfb128:
    case NID_aes_128_cfb8:
    case NID_aes_128_cfb1:

        return NID_aes_128_cfb128;

    case NID_aes_192_cfb128:
    case NID_aes_192_cfb8:
    case NID_aes_192_cfb1:

        return NID_aes_192_cfb128;

    case NID_aes_256_cfb128:
    case NID_aes_256_cfb8:
    case NID_aes_256_cfb1:

        return NID_aes_256_cfb128;

    case NID_des_cfb64:
    case NID_des_cfb8:
    case NID_des_cfb1:

        return NID_des_cfb64;

    case NID_des_ede3_cfb64:
    case NID_des_ede3_cfb8:
    case NID_des_ede3_cfb1:

        return NID_des_cfb64;

    default:
        /* Check it has an OID and it is valid */
        otmp = FUNC3(nid);
        if (FUNC2(otmp) == NULL)
            nid = NID_undef;
        FUNC0(otmp);
        return nid;
    }
}