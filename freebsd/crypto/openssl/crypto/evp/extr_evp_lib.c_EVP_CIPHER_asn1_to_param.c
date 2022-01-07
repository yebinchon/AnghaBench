
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* cipher; } ;
struct TYPE_7__ {int (* get_asn1_parameters ) (TYPE_2__*,int *) ;int flags; } ;
typedef TYPE_2__ EVP_CIPHER_CTX ;
typedef int ASN1_TYPE ;


 int EVP_CIPHER_CTX_mode (TYPE_2__*) ;
 int EVP_CIPHER_get_asn1_iv (TYPE_2__*,int *) ;

 int EVP_CIPH_FLAG_DEFAULT_ASN1 ;




 int EVP_F_EVP_CIPHER_ASN1_TO_PARAM ;
 int EVP_R_CIPHER_PARAMETER_ERROR ;
 int EVP_R_UNSUPPORTED_CIPHER ;
 int EVPerr (int ,int ) ;
 int stub1 (TYPE_2__*,int *) ;

int EVP_CIPHER_asn1_to_param(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
    int ret;

    if (c->cipher->get_asn1_parameters != ((void*)0))
        ret = c->cipher->get_asn1_parameters(c, type);
    else if (c->cipher->flags & EVP_CIPH_FLAG_DEFAULT_ASN1) {
        switch (EVP_CIPHER_CTX_mode(c)) {

        case 129:
            ret = 1;
            break;

        case 131:
        case 132:
        case 128:
        case 130:
            ret = -2;
            break;

        default:
            ret = EVP_CIPHER_get_asn1_iv(c, type);
            break;
        }
    } else
        ret = -1;
    if (ret <= 0)
        EVPerr(EVP_F_EVP_CIPHER_ASN1_TO_PARAM, ret == -2 ?
               EVP_R_UNSUPPORTED_CIPHER :
               EVP_R_CIPHER_PARAMETER_ERROR);
    if (ret < -1)
        ret = -1;
    return ret;
}
