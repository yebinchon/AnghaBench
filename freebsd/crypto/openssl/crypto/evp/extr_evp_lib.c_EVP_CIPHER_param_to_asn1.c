
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* cipher; } ;
struct TYPE_8__ {int (* set_asn1_parameters ) (TYPE_2__*,int *) ;int flags; } ;
typedef TYPE_2__ EVP_CIPHER_CTX ;
typedef int ASN1_TYPE ;


 int ASN1_R_UNSUPPORTED_CIPHER ;
 int ASN1_TYPE_set (int *,int ,int *) ;
 int EVP_CIPHER_CTX_mode (TYPE_2__*) ;
 int EVP_CIPHER_CTX_nid (TYPE_2__*) ;
 int EVP_CIPHER_set_asn1_iv (TYPE_2__*,int *) ;

 int EVP_CIPH_FLAG_DEFAULT_ASN1 ;




 int EVP_F_EVP_CIPHER_PARAM_TO_ASN1 ;
 int EVP_R_CIPHER_PARAMETER_ERROR ;
 int EVPerr (int ,int ) ;
 int NID_id_smime_alg_CMS3DESwrap ;
 int V_ASN1_NULL ;
 int stub1 (TYPE_2__*,int *) ;

int EVP_CIPHER_param_to_asn1(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
    int ret;

    if (c->cipher->set_asn1_parameters != ((void*)0))
        ret = c->cipher->set_asn1_parameters(c, type);
    else if (c->cipher->flags & EVP_CIPH_FLAG_DEFAULT_ASN1) {
        switch (EVP_CIPHER_CTX_mode(c)) {
        case 129:
            if (EVP_CIPHER_CTX_nid(c) == NID_id_smime_alg_CMS3DESwrap)
                ASN1_TYPE_set(type, V_ASN1_NULL, ((void*)0));
            ret = 1;
            break;

        case 131:
        case 132:
        case 128:
        case 130:
            ret = -2;
            break;

        default:
            ret = EVP_CIPHER_set_asn1_iv(c, type);
        }
    } else
        ret = -1;
    if (ret <= 0)
        EVPerr(EVP_F_EVP_CIPHER_PARAM_TO_ASN1, ret == -2 ?
               ASN1_R_UNSUPPORTED_CIPHER :
               EVP_R_CIPHER_PARAMETER_ERROR);
    if (ret < -1)
        ret = -1;
    return ret;
}
