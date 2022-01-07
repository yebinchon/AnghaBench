
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int hx509_context ;
typedef int buf ;
struct TYPE_10__ {int subject; } ;
struct TYPE_12__ {TYPE_2__ tbsCertificate; } ;
struct TYPE_9__ {int length; int data; } ;
struct TYPE_11__ {TYPE_1__ extnValue; } ;
typedef int KeyUsage ;
typedef TYPE_3__ Extension ;
typedef TYPE_4__ Certificate ;


 int HX509_KU_CERT_MISSING ;
 unsigned int KeyUsage2int (int ) ;
 int _hx509_cert_get_version (TYPE_4__ const*) ;
 int _hx509_unparse_Name (int *,char**) ;
 int asn1_KeyUsage_units () ;
 int asn1_oid_id_x509_ce_keyUsage ;
 int decode_KeyUsage (int ,int ,int *,size_t*) ;
 TYPE_3__* find_extension (TYPE_4__ const*,int *,size_t*) ;
 int free (char*) ;
 int hx509_set_error_string (int ,int ,int,char*,...) ;
 int unparse_flags (unsigned int,int ,char*,int) ;

__attribute__((used)) static int
check_key_usage(hx509_context context, const Certificate *cert,
  unsigned flags, int req_present)
{
    const Extension *e;
    KeyUsage ku;
    size_t size;
    int ret;
    size_t i = 0;
    unsigned ku_flags;

    if (_hx509_cert_get_version(cert) < 3)
 return 0;

    e = find_extension(cert, &asn1_oid_id_x509_ce_keyUsage, &i);
    if (e == ((void*)0)) {
 if (req_present) {
     hx509_set_error_string(context, 0, HX509_KU_CERT_MISSING,
       "Required extension key "
       "usage missing from certifiate");
     return HX509_KU_CERT_MISSING;
 }
 return 0;
    }

    ret = decode_KeyUsage(e->extnValue.data, e->extnValue.length, &ku, &size);
    if (ret)
 return ret;
    ku_flags = KeyUsage2int(ku);
    if ((ku_flags & flags) != flags) {
 unsigned missing = (~ku_flags) & flags;
 char buf[256], *name;

 unparse_flags(missing, asn1_KeyUsage_units(), buf, sizeof(buf));
 _hx509_unparse_Name(&cert->tbsCertificate.subject, &name);
 hx509_set_error_string(context, 0, HX509_KU_CERT_MISSING,
          "Key usage %s required but missing "
          "from certifiate %s", buf, name);
 free(name);
 return HX509_KU_CERT_MISSING;
    }
    return 0;
}
