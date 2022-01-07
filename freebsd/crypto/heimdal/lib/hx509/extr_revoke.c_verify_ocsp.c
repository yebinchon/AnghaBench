
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_13__ {int byKey; int byName; } ;
struct TYPE_14__ {int element; TYPE_1__ u; } ;
struct TYPE_16__ {int _save; TYPE_2__ responderID; } ;
struct TYPE_17__ {int signature; TYPE_4__ tbsResponseData; int signatureAlgorithm; } ;
struct revoke_ocsp {int * signer; TYPE_5__ ocsp; scalar_t__ certs; } ;
struct TYPE_18__ {int * keyhash_sha1; int match; int * subject_name; int * issuer_name; } ;
typedef TYPE_6__ hx509_query ;
typedef int hx509_context ;
typedef scalar_t__ hx509_certs ;
typedef int * hx509_cert ;
struct TYPE_15__ {int _save; int issuer; } ;
struct TYPE_19__ {int signatureValue; TYPE_3__ tbsCertificate; int signatureAlgorithm; } ;
typedef TYPE_7__ Certificate ;


 int HX509_ERROR_APPEND ;
 int HX509_PARENT_NOT_CA ;
 int HX509_QUERY_MATCH_ISSUER_NAME ;
 int HX509_QUERY_MATCH_KEY_HASH_SHA1 ;
 int HX509_QUERY_MATCH_SUBJECT_NAME ;
 int _hx509_cert_is_parent_cmp (TYPE_7__*,TYPE_7__*,int ) ;
 TYPE_7__* _hx509_get_cert (int *) ;
 int _hx509_query_clear (TYPE_6__*) ;
 int _hx509_verify_signature_bitstring (int ,int *,int *,int *,int *) ;
 int asn1_oid_id_pkix_kp_OCSPSigning ;


 int hx509_cert_check_eku (int ,int *,int *,int ) ;
 scalar_t__ hx509_cert_cmp (int *,int *) ;
 int hx509_cert_free (int *) ;
 int hx509_certs_find (int ,scalar_t__,TYPE_6__*,int **) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

__attribute__((used)) static int
verify_ocsp(hx509_context context,
     struct revoke_ocsp *ocsp,
     time_t time_now,
     hx509_certs certs,
     hx509_cert parent)
{
    hx509_cert signer = ((void*)0);
    hx509_query q;
    int ret;

    _hx509_query_clear(&q);







    q.match = HX509_QUERY_MATCH_ISSUER_NAME;
    q.issuer_name = &_hx509_get_cert(parent)->tbsCertificate.issuer;

    switch(ocsp->ocsp.tbsResponseData.responderID.element) {
    case 128:
 q.match |= HX509_QUERY_MATCH_SUBJECT_NAME;
 q.subject_name = &ocsp->ocsp.tbsResponseData.responderID.u.byName;
 break;
    case 129:
 q.match |= HX509_QUERY_MATCH_KEY_HASH_SHA1;
 q.keyhash_sha1 = &ocsp->ocsp.tbsResponseData.responderID.u.byKey;
 break;
    }

    ret = hx509_certs_find(context, certs, &q, &signer);
    if (ret && ocsp->certs)
 ret = hx509_certs_find(context, ocsp->certs, &q, &signer);
    if (ret)
 goto out;






    if (hx509_cert_cmp(signer, parent) != 0) {
 Certificate *p = _hx509_get_cert(parent);
 Certificate *s = _hx509_get_cert(signer);

 ret = _hx509_cert_is_parent_cmp(s, p, 0);
 if (ret != 0) {
     ret = HX509_PARENT_NOT_CA;
     hx509_set_error_string(context, 0, ret, "Revoke OCSP signer is "
       "doesn't have CA as signer certificate");
     goto out;
 }

 ret = _hx509_verify_signature_bitstring(context,
      parent,
      &s->signatureAlgorithm,
      &s->tbsCertificate._save,
      &s->signatureValue);
 if (ret) {
     hx509_set_error_string(context, HX509_ERROR_APPEND, ret,
       "OCSP signer signature invalid");
     goto out;
 }

 ret = hx509_cert_check_eku(context, signer,
       &asn1_oid_id_pkix_kp_OCSPSigning, 0);
 if (ret)
     goto out;
    }

    ret = _hx509_verify_signature_bitstring(context,
         signer,
         &ocsp->ocsp.signatureAlgorithm,
         &ocsp->ocsp.tbsResponseData._save,
         &ocsp->ocsp.signature);
    if (ret) {
 hx509_set_error_string(context, HX509_ERROR_APPEND, ret,
          "OCSP signature invalid");
 goto out;
    }

    ocsp->signer = signer;
    signer = ((void*)0);
out:
    if (signer)
 hx509_cert_free(signer);

    return ret;
}
