
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct ocsp_add_ctx {TYPE_7__* req; int digest; scalar_t__ parent; int certs; } ;
struct TYPE_28__ {TYPE_11__* subject; int match; } ;
typedef TYPE_8__ hx509_query ;
typedef int hx509_context ;
typedef int * hx509_cert ;
struct TYPE_29__ {int length; int data; } ;
typedef TYPE_9__ heim_octet_string ;
struct TYPE_26__ {int len; TYPE_10__* val; } ;
struct TYPE_27__ {TYPE_6__ requestList; } ;
struct TYPE_25__ {int serialNumber; int issuerKeyHash; int hashAlgorithm; int issuerNameHash; } ;
struct TYPE_22__ {int length; int data; } ;
struct TYPE_23__ {TYPE_2__ subjectPublicKey; } ;
struct TYPE_21__ {TYPE_9__ _save; } ;
struct TYPE_24__ {int serialNumber; TYPE_3__ subjectPublicKeyInfo; TYPE_1__ issuer; } ;
struct TYPE_20__ {TYPE_4__ tbsCertificate; } ;
struct TYPE_19__ {TYPE_5__ reqCert; } ;
typedef TYPE_10__ OCSPInnerRequest ;
typedef TYPE_11__ Certificate ;


 int ENOMEM ;
 int HX509_QUERY_FIND_ISSUER_CERT ;
 int HX509_REVOKE_NOT_SAME_PARENT ;
 int _hx509_create_signature (int ,int *,int *,TYPE_9__*,int *,int *) ;
 TYPE_11__* _hx509_get_cert (int *) ;
 int _hx509_query_clear (TYPE_8__*) ;
 int copy_AlgorithmIdentifier (int ,int *) ;
 int copy_CertificateSerialNumber (int *,int *) ;
 int free_OCSPInnerRequest (TYPE_10__*) ;
 scalar_t__ hx509_cert_cmp (scalar_t__,int *) ;
 int hx509_cert_free (int *) ;
 scalar_t__ hx509_cert_ref (int *) ;
 int hx509_certs_find (int ,int ,TYPE_8__*,int **) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int memset (TYPE_10__*,int ,int) ;
 void* realloc (TYPE_10__*,int) ;

__attribute__((used)) static int
add_to_req(hx509_context context, void *ptr, hx509_cert cert)
{
    struct ocsp_add_ctx *ctx = ptr;
    OCSPInnerRequest *one;
    hx509_cert parent = ((void*)0);
    Certificate *p, *c = _hx509_get_cert(cert);
    heim_octet_string os;
    int ret;
    hx509_query q;
    void *d;

    d = realloc(ctx->req->requestList.val,
  sizeof(ctx->req->requestList.val[0]) *
  (ctx->req->requestList.len + 1));
    if (d == ((void*)0))
 return ENOMEM;
    ctx->req->requestList.val = d;

    one = &ctx->req->requestList.val[ctx->req->requestList.len];
    memset(one, 0, sizeof(*one));

    _hx509_query_clear(&q);

    q.match |= HX509_QUERY_FIND_ISSUER_CERT;
    q.subject = c;

    ret = hx509_certs_find(context, ctx->certs, &q, &parent);
    if (ret)
 goto out;

    if (ctx->parent) {
 if (hx509_cert_cmp(ctx->parent, parent) != 0) {
     ret = HX509_REVOKE_NOT_SAME_PARENT;
     hx509_set_error_string(context, 0, ret,
       "Not same parent certifate as "
       "last certificate in request");
     goto out;
 }
    } else
 ctx->parent = hx509_cert_ref(parent);

    p = _hx509_get_cert(parent);

    ret = copy_AlgorithmIdentifier(ctx->digest, &one->reqCert.hashAlgorithm);
    if (ret)
 goto out;

    ret = _hx509_create_signature(context,
      ((void*)0),
      &one->reqCert.hashAlgorithm,
      &c->tbsCertificate.issuer._save,
      ((void*)0),
      &one->reqCert.issuerNameHash);
    if (ret)
 goto out;

    os.data = p->tbsCertificate.subjectPublicKeyInfo.subjectPublicKey.data;
    os.length =
 p->tbsCertificate.subjectPublicKeyInfo.subjectPublicKey.length / 8;

    ret = _hx509_create_signature(context,
      ((void*)0),
      &one->reqCert.hashAlgorithm,
      &os,
      ((void*)0),
      &one->reqCert.issuerKeyHash);
    if (ret)
 goto out;

    ret = copy_CertificateSerialNumber(&c->tbsCertificate.serialNumber,
           &one->reqCert.serialNumber);
    if (ret)
 goto out;

    ctx->req->requestList.len++;
out:
    hx509_cert_free(parent);
    if (ret) {
 free_OCSPInnerRequest(one);
 memset(one, 0, sizeof(*one));
    }

    return ret;
}
