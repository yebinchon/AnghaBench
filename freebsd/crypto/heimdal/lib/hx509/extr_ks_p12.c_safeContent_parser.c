
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hx509_collector {int dummy; } ;
typedef int hx509_context ;
struct TYPE_4__ {int length; int data; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int PKCS12_Attributes ;


 int decode_PKCS12_OctetString (void const*,size_t,TYPE_1__*,int *) ;
 int der_free_octet_string (TYPE_1__*) ;
 int parse_safe_content (int ,struct hx509_collector*,int ,int ) ;

__attribute__((used)) static int
safeContent_parser(hx509_context context,
     struct hx509_collector *c,
     const void *data, size_t length,
     const PKCS12_Attributes *attrs)
{
    heim_octet_string os;
    int ret;

    ret = decode_PKCS12_OctetString(data, length, &os, ((void*)0));
    if (ret)
 return ret;
    ret = parse_safe_content(context, c, os.data, os.length);
    der_free_octet_string(&os);
    return ret;
}
