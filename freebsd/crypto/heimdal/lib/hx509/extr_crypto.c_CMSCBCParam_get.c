
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* hx509_crypto ;
typedef int hx509_context ;
struct TYPE_8__ {size_t length; int data; } ;
typedef TYPE_2__ heim_octet_string ;
struct TYPE_7__ {int * param; } ;


 int ASN1_MALLOC_ENCODE (int ,int ,size_t,TYPE_2__ const*,size_t*,int) ;
 int CMSCBCParameter ;
 int _hx509_abort (char*) ;
 int assert (int ) ;
 int hx509_clear_error_string (int ) ;

__attribute__((used)) static int
CMSCBCParam_get(hx509_context context, const hx509_crypto crypto,
   const heim_octet_string *ivec, heim_octet_string *param)
{
    size_t size;
    int ret;

    assert(crypto->param == ((void*)0));
    if (ivec == ((void*)0))
 return 0;

    ASN1_MALLOC_ENCODE(CMSCBCParameter, param->data, param->length,
         ivec, &size, ret);
    if (ret == 0 && size != param->length)
 _hx509_abort("Internal asn1 encoder failure");
    if (ret)
 hx509_clear_error_string(context);
    return ret;
}
