
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct hx509_collector {int dummy; } ;
typedef int oids ;
typedef int hx509_context ;
typedef int hx509_cert ;
typedef int heim_oid ;
struct TYPE_11__ {int length; int data; } ;
typedef TYPE_2__ heim_octet_string ;
struct TYPE_13__ {int attrValues; } ;
struct TYPE_10__ {int length; int data; } ;
struct TYPE_12__ {TYPE_1__ certValue; int certType; } ;
typedef TYPE_3__ PKCS12_CertBag ;
typedef int PKCS12_Attributes ;
typedef TYPE_4__ PKCS12_Attribute ;


 int _hx509_collector_certs_add (int ,struct hx509_collector*,int ) ;
 int _hx509_set_cert_attribute (int ,int ,int const*,int *) ;
 int asn1_oid_id_pkcs_9_at_certTypes_x509 ;
 int const asn1_oid_id_pkcs_9_at_friendlyName ;
 int const asn1_oid_id_pkcs_9_at_localKeyId ;
 int decode_PKCS12_CertBag (void const*,size_t,TYPE_3__*,int *) ;
 int decode_PKCS12_OctetString (int ,int ,TYPE_2__*,int *) ;
 int der_free_octet_string (TYPE_2__*) ;
 scalar_t__ der_heim_oid_cmp (int *,int *) ;
 TYPE_4__* find_attribute (int const*,int const*) ;
 int free_PKCS12_CertBag (TYPE_3__*) ;
 int hx509_cert_free (int ) ;
 int hx509_cert_init_data (int ,int ,int ,int *) ;

__attribute__((used)) static int
certBag_parser(hx509_context context,
        struct hx509_collector *c,
        const void *data, size_t length,
        const PKCS12_Attributes *attrs)
{
    heim_octet_string os;
    hx509_cert cert;
    PKCS12_CertBag cb;
    int ret;

    ret = decode_PKCS12_CertBag(data, length, &cb, ((void*)0));
    if (ret)
 return ret;

    if (der_heim_oid_cmp(&asn1_oid_id_pkcs_9_at_certTypes_x509, &cb.certType)) {
 free_PKCS12_CertBag(&cb);
 return 0;
    }

    ret = decode_PKCS12_OctetString(cb.certValue.data,
        cb.certValue.length,
        &os,
        ((void*)0));
    free_PKCS12_CertBag(&cb);
    if (ret)
 return ret;

    ret = hx509_cert_init_data(context, os.data, os.length, &cert);
    der_free_octet_string(&os);
    if (ret)
 return ret;

    ret = _hx509_collector_certs_add(context, c, cert);
    if (ret) {
 hx509_cert_free(cert);
 return ret;
    }

    {
 const PKCS12_Attribute *attr;
 const heim_oid *oids[] = {
     &asn1_oid_id_pkcs_9_at_localKeyId, &asn1_oid_id_pkcs_9_at_friendlyName
 };
 size_t i;

 for (i = 0; i < sizeof(oids)/sizeof(oids[0]); i++) {
     const heim_oid *oid = oids[i];
     attr = find_attribute(attrs, oid);
     if (attr)
  _hx509_set_cert_attribute(context, cert, oid,
       &attr->attrValues);
 }
    }

    hx509_cert_free(cert);

    return 0;
}
