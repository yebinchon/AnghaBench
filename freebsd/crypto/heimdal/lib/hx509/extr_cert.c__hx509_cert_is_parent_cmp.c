
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef int si ;
typedef int ai ;
struct TYPE_24__ {int rdnSequence; } ;
struct TYPE_32__ {TYPE_1__ u; int element; } ;
struct TYPE_31__ {int * keyIdentifier; TYPE_6__* authorityCertIssuer; int * authorityCertSerialNumber; } ;
struct TYPE_30__ {int subject; int serialNumber; TYPE_9__ issuer; } ;
struct TYPE_29__ {int len; TYPE_5__* val; } ;
struct TYPE_25__ {int rdnSequence; } ;
struct TYPE_26__ {TYPE_2__ u; int element; } ;
struct TYPE_27__ {TYPE_3__ directoryName; } ;
struct TYPE_28__ {scalar_t__ element; TYPE_4__ u; } ;
struct TYPE_23__ {TYPE_7__ tbsCertificate; } ;
typedef TYPE_8__ SubjectKeyIdentifier ;
typedef TYPE_9__ Name ;
typedef TYPE_10__ Certificate ;
typedef TYPE_8__ AuthorityKeyIdentifier ;


 int HX509_EXTENSION_NOT_FOUND ;
 int _hx509_find_extension_subject_key_id (TYPE_10__ const*,TYPE_8__*) ;
 int _hx509_name_cmp (int *,TYPE_9__*,int*) ;
 scalar_t__ choice_GeneralName_directoryName ;
 int der_heim_integer_cmp (int *,int *) ;
 int der_heim_octet_string_cmp (int *,TYPE_8__*) ;
 int find_extension_auth_key_id (TYPE_10__ const*,TYPE_8__*) ;
 int free_AuthorityKeyIdentifier (TYPE_8__*) ;
 int free_SubjectKeyIdentifier (TYPE_8__*) ;
 int memset (TYPE_8__*,int ,int) ;

int
_hx509_cert_is_parent_cmp(const Certificate *subject,
     const Certificate *issuer,
     int allow_self_signed)
{
    int diff;
    AuthorityKeyIdentifier ai;
    SubjectKeyIdentifier si;
    int ret_ai, ret_si, ret;

    ret = _hx509_name_cmp(&issuer->tbsCertificate.subject,
     &subject->tbsCertificate.issuer,
     &diff);
    if (ret)
 return ret;
    if (diff)
 return diff;

    memset(&ai, 0, sizeof(ai));
    memset(&si, 0, sizeof(si));






    ret_ai = find_extension_auth_key_id(subject, &ai);
    if (ret_ai && ret_ai != HX509_EXTENSION_NOT_FOUND)
 return 1;
    ret_si = _hx509_find_extension_subject_key_id(issuer, &si);
    if (ret_si && ret_si != HX509_EXTENSION_NOT_FOUND)
 return -1;

    if (ret_si && ret_ai)
 goto out;
    if (ret_ai)
 goto out;
    if (ret_si) {
 if (allow_self_signed) {
     diff = 0;
     goto out;
 } else if (ai.keyIdentifier) {
     diff = -1;
     goto out;
 }
    }

    if (ai.keyIdentifier == ((void*)0)) {
 Name name;

 if (ai.authorityCertIssuer == ((void*)0))
     return -1;
 if (ai.authorityCertSerialNumber == ((void*)0))
     return -1;

 diff = der_heim_integer_cmp(ai.authorityCertSerialNumber,
        &issuer->tbsCertificate.serialNumber);
 if (diff)
     return diff;
 if (ai.authorityCertIssuer->len != 1)
     return -1;
 if (ai.authorityCertIssuer->val[0].element != choice_GeneralName_directoryName)
     return -1;

 name.element =
     ai.authorityCertIssuer->val[0].u.directoryName.element;
 name.u.rdnSequence =
     ai.authorityCertIssuer->val[0].u.directoryName.u.rdnSequence;

 ret = _hx509_name_cmp(&issuer->tbsCertificate.subject,
         &name,
         &diff);
 if (ret)
     return ret;
 if (diff)
     return diff;
 diff = 0;
    } else
 diff = der_heim_octet_string_cmp(ai.keyIdentifier, &si);
    if (diff)
 goto out;

 out:
    free_AuthorityKeyIdentifier(&ai);
    free_SubjectKeyIdentifier(&si);
    return diff;
}
