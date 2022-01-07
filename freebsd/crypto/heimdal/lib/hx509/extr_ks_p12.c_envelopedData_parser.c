
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hx509_collector {int dummy; } ;
typedef int hx509_lock ;
typedef int hx509_context ;
typedef int heim_oid ;
struct TYPE_4__ {int length; int data; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int contentType ;
typedef int PKCS12_Attributes ;


 int HX509_ERROR_APPEND ;
 int _hx509_collector_get_lock (struct hx509_collector*) ;
 int _hx509_lock_unlock_certs (int ) ;
 int asn1_oid_id_pkcs7_data ;
 int der_free_octet_string (TYPE_1__*) ;
 int der_free_oid (int *) ;
 scalar_t__ der_heim_oid_cmp (int *,int *) ;
 int hx509_cms_unenvelope (int ,int ,int ,void const*,size_t,int *,int ,int *,TYPE_1__*) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int memset (int *,int ,int) ;
 int parse_safe_content (int ,struct hx509_collector*,int ,int ) ;

__attribute__((used)) static int
envelopedData_parser(hx509_context context,
       struct hx509_collector *c,
       const void *data, size_t length,
       const PKCS12_Attributes *attrs)
{
    heim_octet_string content;
    heim_oid contentType;
    hx509_lock lock;
    int ret;

    memset(&contentType, 0, sizeof(contentType));

    lock = _hx509_collector_get_lock(c);

    ret = hx509_cms_unenvelope(context,
          _hx509_lock_unlock_certs(lock),
          0,
          data, length,
          ((void*)0),
          0,
          &contentType,
          &content);
    if (ret) {
 hx509_set_error_string(context, HX509_ERROR_APPEND, ret,
          "PKCS12 failed to unenvelope");
 return ret;
    }

    if (der_heim_oid_cmp(&contentType, &asn1_oid_id_pkcs7_data) == 0)
 ret = parse_safe_content(context, c, content.data, content.length);

    der_free_octet_string(&content);
    der_free_oid(&contentType);

    return ret;
}
