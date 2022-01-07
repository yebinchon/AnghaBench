
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct signature_alg {int (* evp_md ) () ;int sig_oid; } ;
typedef int hx509_private_key ;
typedef int hx509_context ;
struct TYPE_5__ {size_t length; int * data; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int EVP_MD_CTX ;
typedef int AlgorithmIdentifier ;


 int ENOMEM ;
 int EVP_DigestFinal_ex (int *,int *,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,int *,size_t) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 size_t EVP_MD_size (int ) ;
 int * malloc (size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int set_digest_alg (int *,int ,char*,int) ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static int
evp_md_create_signature(hx509_context context,
   const struct signature_alg *sig_alg,
   const hx509_private_key signer,
   const AlgorithmIdentifier *alg,
   const heim_octet_string *data,
   AlgorithmIdentifier *signatureAlgorithm,
   heim_octet_string *sig)
{
    size_t sigsize = EVP_MD_size(sig_alg->evp_md());
    EVP_MD_CTX *ctx;

    memset(sig, 0, sizeof(*sig));

    if (signatureAlgorithm) {
 int ret;
 ret = set_digest_alg(signatureAlgorithm, sig_alg->sig_oid,
        "\x05\x00", 2);
 if (ret)
     return ret;
    }


    sig->data = malloc(sigsize);
    if (sig->data == ((void*)0)) {
 sig->length = 0;
 return ENOMEM;
    }
    sig->length = sigsize;

    ctx = EVP_MD_CTX_create();
    EVP_DigestInit_ex(ctx, sig_alg->evp_md(), ((void*)0));
    EVP_DigestUpdate(ctx, data->data, data->length);
    EVP_DigestFinal_ex(ctx, sig->data, ((void*)0));
    EVP_MD_CTX_destroy(ctx);


    return 0;
}
