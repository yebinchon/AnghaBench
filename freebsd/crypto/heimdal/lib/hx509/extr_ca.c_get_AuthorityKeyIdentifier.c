
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int name ;
typedef int hx509_context ;
typedef int gns ;
typedef int gn ;
struct TYPE_24__ {int serialNumber; int subject; } ;
struct TYPE_26__ {TYPE_5__ tbsCertificate; } ;
struct TYPE_20__ {int rdnSequence; } ;
struct TYPE_21__ {TYPE_1__ u; int element; } ;
struct TYPE_22__ {int rdnSequence; TYPE_2__ directoryName; } ;
struct TYPE_25__ {int len; int val; TYPE_3__ u; int element; } ;
struct TYPE_23__ {int len; int val; } ;
struct TYPE_19__ {int * authorityCertSerialNumber; TYPE_4__* authorityCertIssuer; int * keyIdentifier; } ;
typedef int SubjectKeyIdentifier ;
typedef TYPE_6__ Name ;
typedef TYPE_6__ GeneralNames ;
typedef TYPE_6__ GeneralName ;
typedef TYPE_9__ Certificate ;
typedef TYPE_10__ AuthorityKeyIdentifier ;


 int ENOMEM ;
 int _hx509_find_extension_subject_key_id (TYPE_9__ const*,int *) ;
 int add_GeneralNames (TYPE_6__*,TYPE_6__*) ;
 void* calloc (int,int) ;
 int choice_GeneralName_directoryName ;
 int choice_GeneralName_directoryName_rdnSequence ;
 int copy_Name (int *,TYPE_6__*) ;
 int der_copy_heim_integer (int *,int *) ;
 int der_copy_octet_string (int *,int *) ;
 int free_AuthorityKeyIdentifier (TYPE_10__*) ;
 int free_SubjectKeyIdentifier (int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int memset (TYPE_6__*,int ,int) ;

__attribute__((used)) static int
get_AuthorityKeyIdentifier(hx509_context context,
      const Certificate *certificate,
      AuthorityKeyIdentifier *ai)
{
    SubjectKeyIdentifier si;
    int ret;

    ret = _hx509_find_extension_subject_key_id(certificate, &si);
    if (ret == 0) {
 ai->keyIdentifier = calloc(1, sizeof(*ai->keyIdentifier));
 if (ai->keyIdentifier == ((void*)0)) {
     free_SubjectKeyIdentifier(&si);
     ret = ENOMEM;
     hx509_set_error_string(context, 0, ret, "Out of memory");
     goto out;
 }
 ret = der_copy_octet_string(&si, ai->keyIdentifier);
 free_SubjectKeyIdentifier(&si);
 if (ret) {
     hx509_set_error_string(context, 0, ret, "Out of memory");
     goto out;
 }
    } else {
 GeneralNames gns;
 GeneralName gn;
 Name name;

 memset(&gn, 0, sizeof(gn));
 memset(&gns, 0, sizeof(gns));
 memset(&name, 0, sizeof(name));

 ai->authorityCertIssuer =
     calloc(1, sizeof(*ai->authorityCertIssuer));
 if (ai->authorityCertIssuer == ((void*)0)) {
     ret = ENOMEM;
     hx509_set_error_string(context, 0, ret, "Out of memory");
     goto out;
 }
 ai->authorityCertSerialNumber =
     calloc(1, sizeof(*ai->authorityCertSerialNumber));
 if (ai->authorityCertSerialNumber == ((void*)0)) {
     ret = ENOMEM;
     hx509_set_error_string(context, 0, ret, "Out of memory");
     goto out;
 }







 ret = copy_Name(&certificate->tbsCertificate.subject, &name);
 if (ret) {
     hx509_set_error_string(context, 0, ret, "Out of memory");
     goto out;
 }

 memset(&gn, 0, sizeof(gn));
 gn.element = choice_GeneralName_directoryName;
 gn.u.directoryName.element =
     choice_GeneralName_directoryName_rdnSequence;
 gn.u.directoryName.u.rdnSequence = name.u.rdnSequence;

 ret = add_GeneralNames(&gns, &gn);
 if (ret) {
     hx509_set_error_string(context, 0, ret, "Out of memory");
     goto out;
 }

 ai->authorityCertIssuer->val = gns.val;
 ai->authorityCertIssuer->len = gns.len;

 ret = der_copy_heim_integer(&certificate->tbsCertificate.serialNumber,
        ai->authorityCertSerialNumber);
 if (ai->authorityCertSerialNumber == ((void*)0)) {
     ret = ENOMEM;
     hx509_set_error_string(context, 0, ret, "Out of memory");
     goto out;
 }
    }
out:
    if (ret)
 free_AuthorityKeyIdentifier(ai);
    return ret;
}
