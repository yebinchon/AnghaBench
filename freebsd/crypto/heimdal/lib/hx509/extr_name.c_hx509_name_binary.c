
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* hx509_name ;
struct TYPE_6__ {size_t length; int data; } ;
typedef TYPE_2__ heim_octet_string ;
struct TYPE_5__ {int der_name; } ;


 int ASN1_MALLOC_ENCODE (int ,int ,size_t,int *,size_t*,int) ;
 int Name ;
 int _hx509_abort (char*) ;

int
hx509_name_binary(const hx509_name name, heim_octet_string *os)
{
    size_t size;
    int ret;

    ASN1_MALLOC_ENCODE(Name, os->data, os->length, &name->der_name, &size, ret);
    if (ret)
 return ret;
    if (os->length != size)
 _hx509_abort("internal ASN.1 encoder error");

    return 0;
}
