
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int hx509_context ;
typedef enum certtype { ____Placeholder_certtype } certtype ;
struct TYPE_16__ {size_t* pathLenConstraint; int * cA; } ;
struct TYPE_12__ {int subject; } ;
struct TYPE_15__ {TYPE_1__ tbsCertificate; } ;
struct TYPE_13__ {int length; int data; } ;
struct TYPE_14__ {TYPE_2__ extnValue; } ;
typedef TYPE_3__ Extension ;
typedef TYPE_4__ Certificate ;
typedef TYPE_5__ BasicConstraints ;




 int HX509_CA_PATH_TOO_DEEP ;
 int HX509_EXTENSION_NOT_FOUND ;
 int HX509_PARENT_IS_CA ;
 int HX509_PARENT_NOT_CA ;

 int _hx509_cert_get_version (TYPE_4__ const*) ;
 int _hx509_unparse_Name (int *,char**) ;
 int asn1_oid_id_x509_ce_basicConstraints ;
 int assert (int) ;
 int decode_BasicConstraints (int ,int ,TYPE_5__*,size_t*) ;
 TYPE_3__* find_extension (TYPE_4__ const*,int *,size_t*) ;
 int free (char*) ;
 int free_BasicConstraints (TYPE_5__*) ;
 int hx509_set_error_string (int ,int ,int,char*,char*) ;

__attribute__((used)) static int
check_basic_constraints(hx509_context context, const Certificate *cert,
   enum certtype type, size_t depth)
{
    BasicConstraints bc;
    const Extension *e;
    size_t size;
    int ret;
    size_t i = 0;

    if (_hx509_cert_get_version(cert) < 3)
 return 0;

    e = find_extension(cert, &asn1_oid_id_x509_ce_basicConstraints, &i);
    if (e == ((void*)0)) {
 switch(type) {
 case 128:
 case 129:
     return 0;
 case 130: {
     char *name;
     ret = _hx509_unparse_Name(&cert->tbsCertificate.subject, &name);
     assert(ret == 0);
     hx509_set_error_string(context, 0, HX509_EXTENSION_NOT_FOUND,
       "basicConstraints missing from "
       "CA certifiacte %s", name);
     free(name);
     return HX509_EXTENSION_NOT_FOUND;
 }
 }
    }

    ret = decode_BasicConstraints(e->extnValue.data,
      e->extnValue.length, &bc,
      &size);
    if (ret)
 return ret;
    switch(type) {
    case 128:
 if (bc.cA != ((void*)0) && *bc.cA)
     ret = HX509_PARENT_IS_CA;
 break;
    case 129:
 ret = 0;
 break;
    case 130:
 if (bc.cA == ((void*)0) || !*bc.cA)
     ret = HX509_PARENT_NOT_CA;
 else if (bc.pathLenConstraint)
     if (depth - 1 > *bc.pathLenConstraint)
  ret = HX509_CA_PATH_TOO_DEEP;
 break;
    }
    free_BasicConstraints(&bc);
    return ret;
}
