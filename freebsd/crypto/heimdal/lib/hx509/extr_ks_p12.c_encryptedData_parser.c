
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hx509_collector {int dummy; } ;
typedef int hx509_context ;
typedef int heim_oid ;
struct TYPE_4__ {int length; int data; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int contentType ;
typedef int PKCS12_Attributes ;


 int _hx509_collector_get_lock (struct hx509_collector*) ;
 int asn1_oid_id_pkcs7_data ;
 int der_free_octet_string (TYPE_1__*) ;
 int der_free_oid (int *) ;
 scalar_t__ der_heim_oid_cmp (int *,int *) ;
 int hx509_cms_decrypt_encrypted (int ,int ,void const*,size_t,int *,TYPE_1__*) ;
 int memset (int *,int ,int) ;
 int parse_safe_content (int ,struct hx509_collector*,int ,int ) ;

__attribute__((used)) static int
encryptedData_parser(hx509_context context,
       struct hx509_collector *c,
       const void *data, size_t length,
       const PKCS12_Attributes *attrs)
{
    heim_octet_string content;
    heim_oid contentType;
    int ret;

    memset(&contentType, 0, sizeof(contentType));

    ret = hx509_cms_decrypt_encrypted(context,
          _hx509_collector_get_lock(c),
          data, length,
          &contentType,
          &content);
    if (ret)
 return ret;

    if (der_heim_oid_cmp(&contentType, &asn1_oid_id_pkcs7_data) == 0)
 ret = parse_safe_content(context, c, content.data, content.length);

    der_free_octet_string(&content);
    der_free_oid(&contentType);
    return ret;
}
