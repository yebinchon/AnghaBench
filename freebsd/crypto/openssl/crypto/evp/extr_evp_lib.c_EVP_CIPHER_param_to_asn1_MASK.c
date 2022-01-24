#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* cipher; } ;
struct TYPE_8__ {int (* set_asn1_parameters ) (TYPE_2__*,int /*<<< orphan*/ *) ;int flags; } ;
typedef  TYPE_2__ EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_R_UNSUPPORTED_CIPHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
#define  EVP_CIPH_CCM_MODE 132 
 int EVP_CIPH_FLAG_DEFAULT_ASN1 ; 
#define  EVP_CIPH_GCM_MODE 131 
#define  EVP_CIPH_OCB_MODE 130 
#define  EVP_CIPH_WRAP_MODE 129 
#define  EVP_CIPH_XTS_MODE 128 
 int /*<<< orphan*/  EVP_F_EVP_CIPHER_PARAM_TO_ASN1 ; 
 int /*<<< orphan*/  EVP_R_CIPHER_PARAMETER_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_id_smime_alg_CMS3DESwrap ; 
 int /*<<< orphan*/  V_ASN1_NULL ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC6(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
    int ret;

    if (c->cipher->set_asn1_parameters != NULL)
        ret = c->cipher->set_asn1_parameters(c, type);
    else if (c->cipher->flags & EVP_CIPH_FLAG_DEFAULT_ASN1) {
        switch (FUNC1(c)) {
        case EVP_CIPH_WRAP_MODE:
            if (FUNC2(c) == NID_id_smime_alg_CMS3DESwrap)
                FUNC0(type, V_ASN1_NULL, NULL);
            ret = 1;
            break;

        case EVP_CIPH_GCM_MODE:
        case EVP_CIPH_CCM_MODE:
        case EVP_CIPH_XTS_MODE:
        case EVP_CIPH_OCB_MODE:
            ret = -2;
            break;

        default:
            ret = FUNC3(c, type);
        }
    } else
        ret = -1;
    if (ret <= 0)
        FUNC4(EVP_F_EVP_CIPHER_PARAM_TO_ASN1, ret == -2 ?
               ASN1_R_UNSUPPORTED_CIPHER :
               EVP_R_CIPHER_PARAMETER_ERROR);
    if (ret < -1)
        ret = -1;
    return ret;
}