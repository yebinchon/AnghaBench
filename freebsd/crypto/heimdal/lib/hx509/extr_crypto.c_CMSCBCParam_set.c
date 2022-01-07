
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_crypto ;
typedef int hx509_context ;
struct TYPE_5__ {int length; int data; } ;
typedef TYPE_1__ heim_octet_string ;


 int decode_CMSCBCParameter (int ,int ,TYPE_1__*,int *) ;
 int hx509_clear_error_string (int ) ;

__attribute__((used)) static int
CMSCBCParam_set(hx509_context context, const heim_octet_string *param,
  hx509_crypto crypto, heim_octet_string *ivec)
{
    int ret;
    if (ivec == ((void*)0))
 return 0;

    ret = decode_CMSCBCParameter(param->data, param->length, ivec, ((void*)0));
    if (ret)
 hx509_clear_error_string(context);

    return ret;
}
