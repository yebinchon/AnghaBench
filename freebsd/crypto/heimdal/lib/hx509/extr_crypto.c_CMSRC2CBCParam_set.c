
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct _RC2_params {int maximum_effective_key; } ;
typedef TYPE_1__* hx509_crypto ;
typedef int hx509_context ;
struct TYPE_11__ {int length; int data; } ;
typedef TYPE_2__ heim_octet_string ;
struct TYPE_12__ {int rc2ParameterVersion; int iv; } ;
struct TYPE_10__ {struct _RC2_params* param; int c; } ;
typedef TYPE_3__ CMSRC2CBCParameter ;


 int ENOMEM ;
 int EVP_rc2_40_cbc () ;
 int EVP_rc2_64_cbc () ;
 int EVP_rc2_cbc () ;
 int HX509_CRYPTO_SIG_INVALID_FORMAT ;
 struct _RC2_params* calloc (int,int) ;
 int decode_CMSRC2CBCParameter (int ,int ,TYPE_3__*,size_t*) ;
 int der_copy_octet_string (int *,TYPE_2__*) ;
 int free (struct _RC2_params*) ;
 int free_CMSRC2CBCParameter (TYPE_3__*) ;
 int hx509_clear_error_string (int ) ;

__attribute__((used)) static int
CMSRC2CBCParam_set(hx509_context context, const heim_octet_string *param,
     hx509_crypto crypto, heim_octet_string *ivec)
{
    CMSRC2CBCParameter rc2param;
    struct _RC2_params *p;
    size_t size;
    int ret;

    ret = decode_CMSRC2CBCParameter(param->data, param->length,
        &rc2param, &size);
    if (ret) {
 hx509_clear_error_string(context);
 return ret;
    }

    p = calloc(1, sizeof(*p));
    if (p == ((void*)0)) {
 free_CMSRC2CBCParameter(&rc2param);
 hx509_clear_error_string(context);
 return ENOMEM;
    }
    switch(rc2param.rc2ParameterVersion) {
    case 160:
 crypto->c = EVP_rc2_40_cbc();
 p->maximum_effective_key = 40;
 break;
    case 120:
 crypto->c = EVP_rc2_64_cbc();
 p->maximum_effective_key = 64;
 break;
    case 58:
 crypto->c = EVP_rc2_cbc();
 p->maximum_effective_key = 128;
 break;
    default:
 free(p);
 free_CMSRC2CBCParameter(&rc2param);
 return HX509_CRYPTO_SIG_INVALID_FORMAT;
    }
    if (ivec)
 ret = der_copy_octet_string(&rc2param.iv, ivec);
    free_CMSRC2CBCParameter(&rc2param);
    if (ret) {
 free(p);
 hx509_clear_error_string(context);
    } else
 crypto->param = p;

    return ret;
}
