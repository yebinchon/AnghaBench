
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ssize_t ;
typedef int hx509_context ;
struct TYPE_7__ {int length; int data; } ;
struct TYPE_8__ {int serialNumber; int issuer; } ;
struct TYPE_6__ {TYPE_2__ subjectKeyIdentifier; TYPE_3__ issuerAndSerialNumber; } ;
struct TYPE_9__ {int element; TYPE_1__ u; } ;
typedef TYPE_2__ KeyIdentifier ;
typedef TYPE_3__ IssuerAndSerialNumber ;
typedef TYPE_4__ CMSIdentifier ;


 int ENOMEM ;
 int _hx509_Name_to_string (int *,char**) ;
 int asprintf (char**,char*,...) ;


 int der_print_hex_heim_integer (int *,char**) ;
 int free (char*) ;
 int hex_encode (int ,int ,char**) ;

__attribute__((used)) static int
unparse_CMSIdentifier(hx509_context context,
        CMSIdentifier *id,
        char **str)
{
    int ret;

    *str = ((void*)0);
    switch (id->element) {
    case 129: {
 IssuerAndSerialNumber *iasn;
 char *serial, *name;

 iasn = &id->u.issuerAndSerialNumber;

 ret = _hx509_Name_to_string(&iasn->issuer, &name);
 if(ret)
     return ret;
 ret = der_print_hex_heim_integer(&iasn->serialNumber, &serial);
 if (ret) {
     free(name);
     return ret;
 }
 asprintf(str, "certificate issued by %s with serial number %s",
   name, serial);
 free(name);
 free(serial);
 break;
    }
    case 128: {
 KeyIdentifier *ki = &id->u.subjectKeyIdentifier;
 char *keyid;
 ssize_t len;

 len = hex_encode(ki->data, ki->length, &keyid);
 if (len < 0)
     return ENOMEM;

 asprintf(str, "certificate with id %s", keyid);
 free(keyid);
 break;
    }
    default:
 asprintf(str, "certificate have unknown CMSidentifier type");
 break;
    }
    if (*str == ((void*)0))
 return ENOMEM;
    return 0;
}
