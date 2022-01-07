
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hx509_context ;
typedef int hx509_cert ;
struct TYPE_4__ {int length; int data; } ;
struct TYPE_5__ {TYPE_1__ extnValue; } ;
typedef int KeyUsage ;
typedef TYPE_2__ Extension ;
typedef int Certificate ;


 int HX509_KU_CERT_MISSING ;
 int _hx509_cert_get_version (int *) ;
 int * _hx509_get_cert (int ) ;
 int asn1_oid_id_x509_ce_keyUsage ;
 int decode_KeyUsage (int ,int ,int *,size_t*) ;
 TYPE_2__* find_extension (int *,int *,size_t*) ;
 int memset (int *,int ,int) ;

int
_hx509_cert_get_keyusage(hx509_context context,
    hx509_cert c,
    KeyUsage *ku)
{
    Certificate *cert;
    const Extension *e;
    size_t size;
    int ret;
    size_t i = 0;

    memset(ku, 0, sizeof(*ku));

    cert = _hx509_get_cert(c);

    if (_hx509_cert_get_version(cert) < 3)
 return 0;

    e = find_extension(cert, &asn1_oid_id_x509_ce_keyUsage, &i);
    if (e == ((void*)0))
 return HX509_KU_CERT_MISSING;

    ret = decode_KeyUsage(e->extnValue.data, e->extnValue.length, ku, &size);
    if (ret)
 return ret;
    return 0;
}
