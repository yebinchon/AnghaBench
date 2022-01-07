
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hx509_collector {int dummy; } ;
typedef int hx509_context ;
typedef int heim_octet_string ;
struct TYPE_7__ {int attrValues; } ;
struct TYPE_6__ {int privateKey; int privateKeyAlgorithm; } ;
typedef TYPE_1__ PKCS8PrivateKeyInfo ;
typedef int PKCS12_Attributes ;
typedef TYPE_2__ PKCS12_Attribute ;


 int _hx509_collector_private_key_add (int ,struct hx509_collector*,int *,int *,int *,int const*) ;
 int asn1_oid_id_pkcs_9_at_localKeyId ;
 int decode_PKCS8PrivateKeyInfo (void const*,size_t,TYPE_1__*,int *) ;
 TYPE_2__* find_attribute (int const*,int *) ;
 int free_PKCS8PrivateKeyInfo (TYPE_1__*) ;

__attribute__((used)) static int
keyBag_parser(hx509_context context,
       struct hx509_collector *c,
       const void *data, size_t length,
       const PKCS12_Attributes *attrs)
{
    const PKCS12_Attribute *attr;
    PKCS8PrivateKeyInfo ki;
    const heim_octet_string *os = ((void*)0);
    int ret;

    attr = find_attribute(attrs, &asn1_oid_id_pkcs_9_at_localKeyId);
    if (attr)
 os = &attr->attrValues;

    ret = decode_PKCS8PrivateKeyInfo(data, length, &ki, ((void*)0));
    if (ret)
 return ret;

    _hx509_collector_private_key_add(context,
         c,
         &ki.privateKeyAlgorithm,
         ((void*)0),
         &ki.privateKey,
         os);
    free_PKCS8PrivateKeyInfo(&ki);
    return 0;
}
