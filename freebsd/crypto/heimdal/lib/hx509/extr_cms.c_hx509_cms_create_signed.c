
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_18__ {unsigned int len; int * val; } ;
struct TYPE_15__ {int len; TYPE_3__* val; } ;
struct TYPE_13__ {TYPE_10__* eContent; int eContentType; } ;
struct TYPE_17__ {TYPE_10__* certificates; TYPE_8__ digestAlgorithms; TYPE_4__ signerInfos; TYPE_2__ encapContentInfo; int version; } ;
struct TYPE_12__ {size_t length; int data; } ;
struct sigctx {int leafonly; void* certs; TYPE_7__ sd; void* pool; void* anchors; int cmsidflag; int peer; int const* eContentType; TYPE_1__ content; int const* digest_alg; } ;
typedef int sigctx ;
typedef int name ;
typedef int hx509_peer_info ;
typedef struct sigctx hx509_name ;
typedef int hx509_context ;
typedef void* hx509_certs ;
typedef int heim_oid ;
struct TYPE_16__ {size_t length; int data; } ;
typedef TYPE_5__ heim_octet_string ;
struct TYPE_14__ {int digestAlgorithm; } ;
struct TYPE_11__ {size_t length; int * data; } ;
typedef int AlgorithmIdentifier ;


 int ALLOC (TYPE_10__*,int) ;
 int ASN1_MALLOC_ENCODE (int ,int ,size_t,TYPE_7__*,size_t*,int) ;
 int CMSVersion_v3 ;
 int CMS_ID_NAME ;
 int CMS_ID_SKI ;
 int ENOMEM ;
 int HX509_CMS_SIGNATURE_DETACHED ;
 int HX509_CMS_SIGNATURE_ID_NAME ;
 int HX509_CMS_SIGNATURE_LEAF_ONLY ;
 int HX509_CMS_SIGNATURE_NO_CERTS ;
 int HX509_CMS_SIGNATURE_NO_SIGNER ;
 int SignedData ;
 int _hx509_abort (char*) ;
 int add_DigestAlgorithmIdentifiers (TYPE_8__*,int *) ;
 int asn1_oid_id_pkcs7_data ;
 int cert_process ;
 scalar_t__ cmp_AlgorithmIdentifier (int *,int *) ;
 int der_copy_oid (int const*,int *) ;
 int free_SignedData (TYPE_7__*) ;
 int hx509_certs_free (void**) ;
 int hx509_certs_init (int ,char*,int ,int *,void**) ;
 int hx509_certs_iter_f (int ,void*,int ,struct sigctx*) ;
 int hx509_clear_error_string (int ) ;
 int * malloc (size_t) ;
 int memcpy (int *,void const*,size_t) ;
 int memset (struct sigctx*,int ,int) ;
 int rk_UNCONST (void const*) ;
 int sig_process ;

int
hx509_cms_create_signed(hx509_context context,
   int flags,
   const heim_oid *eContentType,
   const void *data, size_t length,
   const AlgorithmIdentifier *digest_alg,
   hx509_certs certs,
   hx509_peer_info peer,
   hx509_certs anchors,
   hx509_certs pool,
   heim_octet_string *signed_data)
{
    unsigned int i, j;
    hx509_name name;
    int ret;
    size_t size;
    struct sigctx sigctx;

    memset(&sigctx, 0, sizeof(sigctx));
    memset(&name, 0, sizeof(name));

    if (eContentType == ((void*)0))
 eContentType = &asn1_oid_id_pkcs7_data;

    sigctx.digest_alg = digest_alg;
    sigctx.content.data = rk_UNCONST(data);
    sigctx.content.length = length;
    sigctx.eContentType = eContentType;
    sigctx.peer = peer;





    if (flags & HX509_CMS_SIGNATURE_ID_NAME)
 sigctx.cmsidflag = CMS_ID_NAME;
    else
 sigctx.cmsidflag = CMS_ID_SKI;





    sigctx.leafonly = (flags & HX509_CMS_SIGNATURE_LEAF_ONLY) ? 1 : 0;






    if ((flags & HX509_CMS_SIGNATURE_NO_CERTS) == 0) {
 ret = hx509_certs_init(context, "MEMORY:certs", 0, ((void*)0), &sigctx.certs);
 if (ret)
     return ret;
    }

    sigctx.anchors = anchors;
    sigctx.pool = pool;

    sigctx.sd.version = CMSVersion_v3;

    der_copy_oid(eContentType, &sigctx.sd.encapContentInfo.eContentType);




    if ((flags & HX509_CMS_SIGNATURE_DETACHED) == 0) {
 ALLOC(sigctx.sd.encapContentInfo.eContent, 1);
 if (sigctx.sd.encapContentInfo.eContent == ((void*)0)) {
     hx509_clear_error_string(context);
     ret = ENOMEM;
     goto out;
 }

 sigctx.sd.encapContentInfo.eContent->data = malloc(length);
 if (sigctx.sd.encapContentInfo.eContent->data == ((void*)0)) {
     hx509_clear_error_string(context);
     ret = ENOMEM;
     goto out;
 }
 memcpy(sigctx.sd.encapContentInfo.eContent->data, data, length);
 sigctx.sd.encapContentInfo.eContent->length = length;
    }





    if ((flags & HX509_CMS_SIGNATURE_NO_SIGNER) == 0) {
 ret = hx509_certs_iter_f(context, certs, sig_process, &sigctx);
 if (ret)
     goto out;
    }

    if (sigctx.sd.signerInfos.len) {




 for (i = 0; i < sigctx.sd.signerInfos.len; i++) {
     AlgorithmIdentifier *di =
  &sigctx.sd.signerInfos.val[i].digestAlgorithm;

     for (j = 0; j < sigctx.sd.digestAlgorithms.len; j++)
  if (cmp_AlgorithmIdentifier(di, &sigctx.sd.digestAlgorithms.val[j]) == 0)
      break;
     if (j == sigctx.sd.digestAlgorithms.len) {
  ret = add_DigestAlgorithmIdentifiers(&sigctx.sd.digestAlgorithms, di);
  if (ret) {
      hx509_clear_error_string(context);
      goto out;
  }
     }
 }
    }




    if (sigctx.certs) {
 ALLOC(sigctx.sd.certificates, 1);
 if (sigctx.sd.certificates == ((void*)0)) {
     hx509_clear_error_string(context);
     ret = ENOMEM;
     goto out;
 }

 ret = hx509_certs_iter_f(context, sigctx.certs, cert_process, &sigctx);
 if (ret)
     goto out;
    }

    ASN1_MALLOC_ENCODE(SignedData,
         signed_data->data, signed_data->length,
         &sigctx.sd, &size, ret);
    if (ret) {
 hx509_clear_error_string(context);
 goto out;
    }
    if (signed_data->length != size)
 _hx509_abort("internal ASN.1 encoder error");

out:
    hx509_certs_free(&sigctx.certs);
    free_SignedData(&sigctx.sd);

    return ret;
}
