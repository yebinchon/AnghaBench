
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_name ;
typedef int hx509_cert ;
struct TYPE_5__ {int serialNumber; int issuer; } ;
struct TYPE_6__ {TYPE_1__ issuerAndSerialNumber; int subjectKeyIdentifier; } ;
struct TYPE_7__ {TYPE_2__ u; int element; } ;
typedef TYPE_3__ CMSIdentifier ;




 int _hx509_abort (char*) ;
 int _hx509_find_extension_subject_key_id (int ,int *) ;
 int _hx509_get_cert (int const) ;
 int choice_CMSIdentifier_issuerAndSerialNumber ;
 int choice_CMSIdentifier_subjectKeyIdentifier ;
 int hx509_cert_get_issuer (int const,int *) ;
 int hx509_cert_get_serialnumber (int const,int *) ;
 int hx509_name_free (int *) ;
 int hx509_name_to_Name (int ,int *) ;

__attribute__((used)) static int
fill_CMSIdentifier(const hx509_cert cert,
     int type,
     CMSIdentifier *id)
{
    int ret;

    switch (type) {
    case 128:
 id->element = choice_CMSIdentifier_subjectKeyIdentifier;
 ret = _hx509_find_extension_subject_key_id(_hx509_get_cert(cert),
         &id->u.subjectKeyIdentifier);
 if (ret == 0)
     break;

    case 129: {
 hx509_name name;

 id->element = choice_CMSIdentifier_issuerAndSerialNumber;
 ret = hx509_cert_get_issuer(cert, &name);
 if (ret)
     return ret;
 ret = hx509_name_to_Name(name, &id->u.issuerAndSerialNumber.issuer);
 hx509_name_free(&name);
 if (ret)
     return ret;

 ret = hx509_cert_get_serialnumber(cert, &id->u.issuerAndSerialNumber.serialNumber);
 break;
    }
    default:
 _hx509_abort("CMS fill identifier with unknown type");
    }
    return ret;
}
