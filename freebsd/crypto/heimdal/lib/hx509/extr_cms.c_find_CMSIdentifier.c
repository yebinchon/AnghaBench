
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_11__ {int match; scalar_t__ timenow; int * subject_id; int * issuer_name; int * serial; } ;
typedef TYPE_3__ hx509_query ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int * hx509_cert ;
typedef int c ;
struct TYPE_9__ {int issuer; int serialNumber; } ;
struct TYPE_10__ {int subjectKeyIdentifier; TYPE_1__ issuerAndSerialNumber; } ;
struct TYPE_12__ {int element; TYPE_2__ u; } ;
typedef int Certificate ;
typedef TYPE_4__ CMSIdentifier ;


 int HX509_CERT_NOT_FOUND ;
 int HX509_CMS_NO_RECIPIENT_CERTIFICATE ;
 int HX509_ERROR_APPEND ;
 int HX509_QUERY_MATCH_ISSUER_NAME ;
 int HX509_QUERY_MATCH_SERIALNUMBER ;
 int HX509_QUERY_MATCH_SUBJECT_KEY_ID ;
 int HX509_QUERY_MATCH_TIME ;
 int _hx509_query_clear (TYPE_3__*) ;


 int hx509_certs_find (int ,int ,TYPE_3__*,int **) ;
 int hx509_clear_error_string (int ) ;
 int hx509_set_error_string (int ,int ,int,char*,...) ;
 int memset (int *,int ,int) ;
 scalar_t__ time (int *) ;
 int unparse_CMSIdentifier (int ,TYPE_4__*,char**) ;

__attribute__((used)) static int
find_CMSIdentifier(hx509_context context,
     CMSIdentifier *client,
     hx509_certs certs,
     time_t time_now,
     hx509_cert *signer_cert,
     int match)
{
    hx509_query q;
    hx509_cert cert;
    Certificate c;
    int ret;

    memset(&c, 0, sizeof(c));
    _hx509_query_clear(&q);

    *signer_cert = ((void*)0);

    switch (client->element) {
    case 129:
 q.serial = &client->u.issuerAndSerialNumber.serialNumber;
 q.issuer_name = &client->u.issuerAndSerialNumber.issuer;
 q.match = HX509_QUERY_MATCH_SERIALNUMBER|HX509_QUERY_MATCH_ISSUER_NAME;
 break;
    case 128:
 q.subject_id = &client->u.subjectKeyIdentifier;
 q.match = HX509_QUERY_MATCH_SUBJECT_KEY_ID;
 break;
    default:
 hx509_set_error_string(context, 0, HX509_CMS_NO_RECIPIENT_CERTIFICATE,
          "unknown CMS identifier element");
 return HX509_CMS_NO_RECIPIENT_CERTIFICATE;
    }

    q.match |= match;

    q.match |= HX509_QUERY_MATCH_TIME;
    if (time_now)
 q.timenow = time_now;
    else
 q.timenow = time(((void*)0));

    ret = hx509_certs_find(context, certs, &q, &cert);
    if (ret == HX509_CERT_NOT_FOUND) {
 char *str;

 ret = unparse_CMSIdentifier(context, client, &str);
 if (ret == 0) {
     hx509_set_error_string(context, 0,
       HX509_CMS_NO_RECIPIENT_CERTIFICATE,
       "Failed to find %s", str);
 } else
     hx509_clear_error_string(context);
 return HX509_CMS_NO_RECIPIENT_CERTIFICATE;
    } else if (ret) {
 hx509_set_error_string(context, HX509_ERROR_APPEND,
          HX509_CMS_NO_RECIPIENT_CERTIFICATE,
          "Failed to find CMS id in cert store");
 return HX509_CMS_NO_RECIPIENT_CERTIFICATE;
    }

    *signer_cert = cert;

    return 0;
}
