
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_context ;
typedef int hx509_cert ;
struct TYPE_3__ {size_t length; int * data; } ;
typedef TYPE_1__ heim_octet_string ;


 int ASN1_MALLOC_ENCODE (int ,int *,size_t,int ,size_t*,int) ;
 int Certificate ;
 int _hx509_abort (char*) ;
 int _hx509_get_cert (int ) ;

int
hx509_cert_binary(hx509_context context, hx509_cert c, heim_octet_string *os)
{
    size_t size;
    int ret;

    os->data = ((void*)0);
    os->length = 0;

    ASN1_MALLOC_ENCODE(Certificate, os->data, os->length,
         _hx509_get_cert(c), &size, ret);
    if (ret) {
 os->data = ((void*)0);
 os->length = 0;
 return ret;
    }
    if (os->length != size)
 _hx509_abort("internal ASN.1 encoder error");

    return ret;
}
