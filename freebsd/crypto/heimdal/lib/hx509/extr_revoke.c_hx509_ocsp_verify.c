
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef scalar_t__ time_t ;
typedef int hx509_name ;
typedef TYPE_8__* hx509_context ;
typedef int hx509_cert ;
struct TYPE_24__ {size_t len; TYPE_5__* val; } ;
struct TYPE_25__ {TYPE_6__ responses; } ;
struct TYPE_27__ {TYPE_7__ tbsResponseData; } ;
struct TYPE_26__ {scalar_t__ ocsp_time_diff; } ;
struct TYPE_22__ {int element; } ;
struct TYPE_21__ {int issuerNameHash; int hashAlgorithm; int serialNumber; } ;
struct TYPE_23__ {scalar_t__ thisUpdate; scalar_t__* nextUpdate; TYPE_4__ certStatus; TYPE_3__ certID; } ;
struct TYPE_19__ {int _save; } ;
struct TYPE_20__ {TYPE_1__ issuer; int serialNumber; } ;
struct TYPE_18__ {TYPE_2__ tbsCertificate; } ;
typedef TYPE_9__ OCSPBasicOCSPResponse ;
typedef TYPE_10__ Certificate ;


 int HX509_CERT_NOT_IN_OCSP ;
 TYPE_10__* _hx509_get_cert (int ) ;
 int _hx509_verify_signature (TYPE_8__*,int *,int *,int *,int *) ;



 int der_heim_integer_cmp (int *,int *) ;
 int free (char*) ;
 int free_OCSPBasicOCSPResponse (TYPE_9__*) ;
 int hx509_cert_get_subject (int ,int *) ;
 int hx509_clear_error_string (TYPE_8__*) ;
 int hx509_name_free (int *) ;
 int hx509_name_to_string (int ,char**) ;
 int hx509_set_error_string (TYPE_8__*,int ,int,char*,...) ;
 int parse_ocsp_basic (void const*,size_t,TYPE_9__*) ;
 scalar_t__ time (int *) ;

int
hx509_ocsp_verify(hx509_context context,
    time_t now,
    hx509_cert cert,
    int flags,
    const void *data, size_t length,
    time_t *expiration)
{
    const Certificate *c = _hx509_get_cert(cert);
    OCSPBasicOCSPResponse basic;
    int ret;
    size_t i;

    if (now == 0)
 now = time(((void*)0));

    *expiration = 0;

    ret = parse_ocsp_basic(data, length, &basic);
    if (ret) {
 hx509_set_error_string(context, 0, ret,
          "Failed to parse OCSP response");
 return ret;
    }

    for (i = 0; i < basic.tbsResponseData.responses.len; i++) {

 ret = der_heim_integer_cmp(&basic.tbsResponseData.responses.val[i].certID.serialNumber,
          &c->tbsCertificate.serialNumber);
 if (ret != 0)
     continue;


 ret = _hx509_verify_signature(context,
          ((void*)0),
          &basic.tbsResponseData.responses.val[i].certID.hashAlgorithm,
          &c->tbsCertificate.issuer._save,
          &basic.tbsResponseData.responses.val[i].certID.issuerNameHash);
 if (ret != 0)
     continue;

 switch (basic.tbsResponseData.responses.val[i].certStatus.element) {
 case 130:
     break;
 case 129:
 case 128:
     continue;
 }


 if (basic.tbsResponseData.responses.val[i].thisUpdate >
     now + context->ocsp_time_diff)
     continue;


 if (basic.tbsResponseData.responses.val[i].nextUpdate) {
     if (*basic.tbsResponseData.responses.val[i].nextUpdate < now)
  continue;
     *expiration = *basic.tbsResponseData.responses.val[i].nextUpdate;
 } else
     *expiration = now;

 free_OCSPBasicOCSPResponse(&basic);
 return 0;
    }

    free_OCSPBasicOCSPResponse(&basic);

    {
 hx509_name name;
 char *subject;

 ret = hx509_cert_get_subject(cert, &name);
 if (ret) {
     hx509_clear_error_string(context);
     goto out;
 }
 ret = hx509_name_to_string(name, &subject);
 hx509_name_free(&name);
 if (ret) {
     hx509_clear_error_string(context);
     goto out;
 }
 hx509_set_error_string(context, 0, HX509_CERT_NOT_IN_OCSP,
          "Certificate %s not in OCSP response "
          "or not good",
          subject);
 free(subject);
    }
out:
    return HX509_CERT_NOT_IN_OCSP;
}
