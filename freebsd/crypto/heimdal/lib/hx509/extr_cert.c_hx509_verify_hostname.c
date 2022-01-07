
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_18__ ;
typedef struct TYPE_26__ TYPE_14__ ;
typedef struct TYPE_25__ TYPE_13__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


struct sockaddr {int dummy; } ;
typedef int san ;
typedef int hx509_hostname_type ;
typedef int hx509_context ;
typedef TYPE_8__* hx509_cert ;
struct TYPE_36__ {void* length; void* data; } ;
typedef TYPE_9__ heim_printable_string ;
struct TYPE_22__ {void* length; void* data; } ;
typedef TYPE_10__ heim_ia5_string ;
struct TYPE_35__ {TYPE_18__* data; } ;
struct TYPE_34__ {int utf8String; int ia5String; int printableString; } ;
struct TYPE_32__ {size_t len; TYPE_4__* val; } ;
struct TYPE_33__ {TYPE_5__ rdnSequence; } ;
struct TYPE_31__ {size_t len; TYPE_14__* val; } ;
struct TYPE_23__ {TYPE_6__ u; } ;
struct TYPE_30__ {TYPE_11__ subject; } ;
struct TYPE_28__ {int dNSName; } ;
struct TYPE_29__ {int element; TYPE_1__ u; } ;
struct TYPE_27__ {TYPE_3__ tbsCertificate; } ;
struct TYPE_25__ {int element; TYPE_7__ u; } ;
struct TYPE_26__ {TYPE_13__ value; int type; } ;
struct TYPE_24__ {size_t len; TYPE_2__* val; } ;
typedef TYPE_11__ Name ;
typedef TYPE_12__ GeneralNames ;
typedef TYPE_13__ DirectoryString ;
typedef TYPE_14__ AttributeTypeAndValue ;


 int EINVAL ;
 int HX509_EXTENSION_NOT_FOUND ;
 int HX509_NAME_CONSTRAINT_ERROR ;
 int HX509_PARSING_NAME_FAILED ;
 int HX509_VHN_F_ALLOW_NO_MATCH ;
 int asn1_oid_id_at_commonName ;




 scalar_t__ der_heim_oid_cmp (int *,int *) ;
 int der_ia5_string_cmp (int *,TYPE_10__*) ;
 int der_printable_string_cmp (int *,TYPE_9__*) ;
 int find_extension_subject_alt_name (TYPE_18__*,size_t*,TYPE_12__*) ;
 int free_GeneralNames (TYPE_12__*) ;
 int memset (TYPE_12__*,int ,int) ;
 void* rk_UNCONST (char const*) ;
 int strcasecmp (int ,char const*) ;
 void* strlen (char const*) ;

int
hx509_verify_hostname(hx509_context context,
        const hx509_cert cert,
        int flags,
        hx509_hostname_type type,
        const char *hostname,
        const struct sockaddr *sa,
                                 int sa_size)
{
    GeneralNames san;
    const Name *name;
    int ret;
    size_t i, j, k;

    if (sa && sa_size <= 0)
 return EINVAL;

    memset(&san, 0, sizeof(san));

    i = 0;
    do {
 ret = find_extension_subject_alt_name(cert->data, &i, &san);
 if (ret == HX509_EXTENSION_NOT_FOUND)
     break;
 else if (ret != 0)
     return HX509_PARSING_NAME_FAILED;

 for (j = 0; j < san.len; j++) {
     switch (san.val[j].element) {
     case 128: {
  heim_printable_string hn;
  hn.data = rk_UNCONST(hostname);
  hn.length = strlen(hostname);

  if (der_printable_string_cmp(&san.val[j].u.dNSName, &hn) == 0) {
      free_GeneralNames(&san);
      return 0;
  }
  break;
     }
     default:
  break;
     }
 }
 free_GeneralNames(&san);
    } while (1);

    name = &cert->data->tbsCertificate.subject;


    for (ret = 0, k = name->u.rdnSequence.len; ret == 0 && k > 0; k--) {
 i = k - 1;
 for (j = 0; ret == 0 && j < name->u.rdnSequence.val[i].len; j++) {
     AttributeTypeAndValue *n = &name->u.rdnSequence.val[i].val[j];

     if (der_heim_oid_cmp(&n->type, &asn1_oid_id_at_commonName) == 0) {
  DirectoryString *ds = &n->value;
  switch (ds->element) {
  case 130: {
      heim_printable_string hn;
      hn.data = rk_UNCONST(hostname);
      hn.length = strlen(hostname);

      if (der_printable_string_cmp(&ds->u.printableString, &hn) == 0)
   return 0;
      break;
  }
  case 131: {
      heim_ia5_string hn;
      hn.data = rk_UNCONST(hostname);
      hn.length = strlen(hostname);

      if (der_ia5_string_cmp(&ds->u.ia5String, &hn) == 0)
   return 0;
      break;
  }
  case 129:
      if (strcasecmp(ds->u.utf8String, hostname) == 0)
   return 0;
  default:
      break;
  }
  ret = HX509_NAME_CONSTRAINT_ERROR;
     }
 }
    }

    if ((flags & HX509_VHN_F_ALLOW_NO_MATCH) == 0)
 ret = HX509_NAME_CONSTRAINT_ERROR;

    return ret;
}
