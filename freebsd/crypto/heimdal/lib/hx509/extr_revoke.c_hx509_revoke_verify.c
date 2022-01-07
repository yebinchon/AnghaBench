
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_62__ TYPE_9__ ;
typedef struct TYPE_61__ TYPE_8__ ;
typedef struct TYPE_60__ TYPE_7__ ;
typedef struct TYPE_59__ TYPE_6__ ;
typedef struct TYPE_58__ TYPE_5__ ;
typedef struct TYPE_57__ TYPE_4__ ;
typedef struct TYPE_56__ TYPE_3__ ;
typedef struct TYPE_55__ TYPE_37__ ;
typedef struct TYPE_54__ TYPE_2__ ;
typedef struct TYPE_53__ TYPE_23__ ;
typedef struct TYPE_52__ TYPE_22__ ;
typedef struct TYPE_51__ TYPE_21__ ;
typedef struct TYPE_50__ TYPE_20__ ;
typedef struct TYPE_49__ TYPE_1__ ;
typedef struct TYPE_48__ TYPE_19__ ;
typedef struct TYPE_47__ TYPE_18__ ;
typedef struct TYPE_46__ TYPE_17__ ;
typedef struct TYPE_45__ TYPE_16__ ;
typedef struct TYPE_44__ TYPE_15__ ;
typedef struct TYPE_43__ TYPE_14__ ;
typedef struct TYPE_42__ TYPE_13__ ;
typedef struct TYPE_41__ TYPE_12__ ;
typedef struct TYPE_40__ TYPE_11__ ;
typedef struct TYPE_39__ TYPE_10__ ;


typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; } ;
struct TYPE_47__ {unsigned long len; TYPE_16__* val; } ;
struct TYPE_46__ {TYPE_18__ responses; } ;
struct TYPE_43__ {TYPE_17__ tbsResponseData; } ;
struct revoke_ocsp {scalar_t__ last_modfied; TYPE_14__ ocsp; int * signer; int path; } ;
struct TYPE_62__ {TYPE_8__* revokedCertificates; TYPE_4__* crlExtensions; int issuer; } ;
struct TYPE_53__ {TYPE_9__ tbsCertList; } ;
struct revoke_crl {scalar_t__ last_modfied; int verified; int failed_verify; TYPE_23__ crl; int path; } ;
typedef TYPE_19__* hx509_revoke_ctx ;
typedef TYPE_20__* hx509_context ;
typedef int hx509_certs ;
typedef int hx509_cert ;
struct TYPE_51__ {int length; int data; } ;
typedef TYPE_21__ heim_octet_string ;
struct TYPE_61__ {unsigned long len; TYPE_7__* val; } ;
struct TYPE_60__ {TYPE_6__* crlEntryExtensions; int revocationDate; int userCertificate; } ;
struct TYPE_59__ {unsigned long len; TYPE_5__* val; } ;
struct TYPE_58__ {scalar_t__ critical; } ;
struct TYPE_57__ {unsigned long len; TYPE_3__* val; } ;
struct TYPE_56__ {scalar_t__ critical; } ;
struct TYPE_55__ {TYPE_21__ _save; } ;
struct TYPE_54__ {unsigned long len; struct revoke_crl* val; } ;
struct TYPE_40__ {int length; int data; } ;
struct TYPE_41__ {TYPE_11__ subjectPublicKey; } ;
struct TYPE_42__ {int serialNumber; TYPE_37__ issuer; TYPE_12__ subjectPublicKeyInfo; } ;
struct TYPE_52__ {TYPE_13__ tbsCertificate; } ;
struct TYPE_50__ {scalar_t__ ocsp_time_diff; int flags; } ;
struct TYPE_49__ {int element; } ;
struct TYPE_39__ {unsigned long len; struct revoke_ocsp* val; } ;
struct TYPE_48__ {TYPE_2__ crls; TYPE_10__ ocsps; } ;
struct TYPE_44__ {int issuerKeyHash; int hashAlgorithm; int issuerNameHash; int serialNumber; } ;
struct TYPE_45__ {scalar_t__ thisUpdate; scalar_t__* nextUpdate; TYPE_1__ certStatus; TYPE_15__ certID; } ;
typedef TYPE_22__ Certificate ;
typedef TYPE_23__ CRLCertificateList ;


 int HX509_CERT_REVOKED ;
 int HX509_CRL_UNKNOWN_EXTENSION ;
 int HX509_CTX_VERIFY_MISSING_OK ;
 int HX509_ERROR_APPEND ;
 int HX509_REVOKE_STATUS_MISSING ;
 scalar_t__ _hx509_Time2time_t (int *) ;
 TYPE_22__* _hx509_get_cert (int ) ;
 int _hx509_name_cmp (TYPE_37__*,int *,int*) ;
 int _hx509_verify_signature (TYPE_20__*,int *,int *,TYPE_21__*,int *) ;



 int der_heim_integer_cmp (int *,int *) ;
 int free_CRLCertificateList (TYPE_23__*) ;
 int hx509_clear_error_string (TYPE_20__*) ;
 int hx509_set_error_string (TYPE_20__*,int ,int,char*) ;
 int load_crl (int ,scalar_t__*,TYPE_23__*) ;
 int load_ocsp (TYPE_20__*,struct revoke_ocsp*) ;
 int stat (int ,struct stat*) ;
 int verify_crl (TYPE_20__*,TYPE_19__*,TYPE_23__*,scalar_t__,int ,int ) ;
 int verify_ocsp (TYPE_20__*,struct revoke_ocsp*,scalar_t__,int ,int ) ;

int
hx509_revoke_verify(hx509_context context,
      hx509_revoke_ctx ctx,
      hx509_certs certs,
      time_t now,
      hx509_cert cert,
      hx509_cert parent_cert)
{
    const Certificate *c = _hx509_get_cert(cert);
    const Certificate *p = _hx509_get_cert(parent_cert);
    unsigned long i, j, k;
    int ret;

    hx509_clear_error_string(context);

    for (i = 0; i < ctx->ocsps.len; i++) {
 struct revoke_ocsp *ocsp = &ctx->ocsps.val[i];
 struct stat sb;




 ret = stat(ocsp->path, &sb);
 if (ret == 0 && ocsp->last_modfied != sb.st_mtime) {
     ret = load_ocsp(context, ocsp);
     if (ret)
  continue;
 }


 if (ocsp->signer == ((void*)0)) {
     ret = verify_ocsp(context, ocsp, now, certs, parent_cert);
     if (ret)
  continue;
 }

 for (j = 0; j < ocsp->ocsp.tbsResponseData.responses.len; j++) {
     heim_octet_string os;

     ret = der_heim_integer_cmp(&ocsp->ocsp.tbsResponseData.responses.val[j].certID.serialNumber,
       &c->tbsCertificate.serialNumber);
     if (ret != 0)
  continue;


     ret = _hx509_verify_signature(context,
       ((void*)0),
       &ocsp->ocsp.tbsResponseData.responses.val[i].certID.hashAlgorithm,
       &c->tbsCertificate.issuer._save,
       &ocsp->ocsp.tbsResponseData.responses.val[i].certID.issuerNameHash);
     if (ret != 0)
  continue;

     os.data = p->tbsCertificate.subjectPublicKeyInfo.subjectPublicKey.data;
     os.length = p->tbsCertificate.subjectPublicKeyInfo.subjectPublicKey.length / 8;

     ret = _hx509_verify_signature(context,
       ((void*)0),
       &ocsp->ocsp.tbsResponseData.responses.val[j].certID.hashAlgorithm,
       &os,
       &ocsp->ocsp.tbsResponseData.responses.val[j].certID.issuerKeyHash);
     if (ret != 0)
  continue;

     switch (ocsp->ocsp.tbsResponseData.responses.val[j].certStatus.element) {
     case 130:
  break;
     case 129:
  hx509_set_error_string(context, 0,
           HX509_CERT_REVOKED,
           "Certificate revoked by issuer in OCSP");
  return HX509_CERT_REVOKED;
     case 128:
  continue;
     }


     if (ocsp->ocsp.tbsResponseData.responses.val[j].thisUpdate >
  now + context->ocsp_time_diff)
  continue;


     if (ocsp->ocsp.tbsResponseData.responses.val[j].nextUpdate) {
  if (*ocsp->ocsp.tbsResponseData.responses.val[j].nextUpdate < now)
      continue;
     }

     return 0;
 }
    }

    for (i = 0; i < ctx->crls.len; i++) {
 struct revoke_crl *crl = &ctx->crls.val[i];
 struct stat sb;
 int diff;


 ret = _hx509_name_cmp(&c->tbsCertificate.issuer,
         &crl->crl.tbsCertList.issuer, &diff);
 if (ret || diff)
     continue;

 ret = stat(crl->path, &sb);
 if (ret == 0 && crl->last_modfied != sb.st_mtime) {
     CRLCertificateList cl;

     ret = load_crl(crl->path, &crl->last_modfied, &cl);
     if (ret == 0) {
  free_CRLCertificateList(&crl->crl);
  crl->crl = cl;
  crl->verified = 0;
  crl->failed_verify = 0;
     }
 }
 if (crl->failed_verify)
     continue;


 if (crl->verified == 0) {
     ret = verify_crl(context, ctx, &crl->crl, now, certs, parent_cert);
     if (ret) {
  crl->failed_verify = 1;
  continue;
     }
     crl->verified = 1;
 }

 if (crl->crl.tbsCertList.crlExtensions) {
     for (j = 0; j < crl->crl.tbsCertList.crlExtensions->len; j++) {
  if (crl->crl.tbsCertList.crlExtensions->val[j].critical) {
      hx509_set_error_string(context, 0,
        HX509_CRL_UNKNOWN_EXTENSION,
        "Unknown CRL extension");
      return HX509_CRL_UNKNOWN_EXTENSION;
  }
     }
 }

 if (crl->crl.tbsCertList.revokedCertificates == ((void*)0))
     return 0;


 for (j = 0; j < crl->crl.tbsCertList.revokedCertificates->len; j++) {
     time_t t;

     ret = der_heim_integer_cmp(&crl->crl.tbsCertList.revokedCertificates->val[j].userCertificate,
           &c->tbsCertificate.serialNumber);
     if (ret != 0)
  continue;

     t = _hx509_Time2time_t(&crl->crl.tbsCertList.revokedCertificates->val[j].revocationDate);
     if (t > now)
  continue;

     if (crl->crl.tbsCertList.revokedCertificates->val[j].crlEntryExtensions)
  for (k = 0; k < crl->crl.tbsCertList.revokedCertificates->val[j].crlEntryExtensions->len; k++)
      if (crl->crl.tbsCertList.revokedCertificates->val[j].crlEntryExtensions->val[k].critical)
   return HX509_CRL_UNKNOWN_EXTENSION;

     hx509_set_error_string(context, 0,
       HX509_CERT_REVOKED,
       "Certificate revoked by issuer in CRL");
     return HX509_CERT_REVOKED;
 }

 return 0;
    }


    if (context->flags & HX509_CTX_VERIFY_MISSING_OK)
 return 0;
    hx509_set_error_string(context, HX509_ERROR_APPEND,
      HX509_REVOKE_STATUS_MISSING,
      "No revoke status found for "
      "certificates");
    return HX509_REVOKE_STATUS_MISSING;
}
