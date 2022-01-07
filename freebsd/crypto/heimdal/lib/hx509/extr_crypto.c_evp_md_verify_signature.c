
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct signature_alg {int name; int (* evp_md ) () ;} ;
typedef int hx509_context ;
struct TYPE_4__ {size_t length; int data; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int digest ;
typedef int EVP_MD_CTX ;
typedef int Certificate ;
typedef int AlgorithmIdentifier ;


 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,int ,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 size_t EVP_MD_size (int ) ;
 int HX509_CRYPTO_BAD_SIGNATURE ;
 int HX509_CRYPTO_SIG_INVALID_FORMAT ;
 scalar_t__ ct_memcmp (unsigned char*,int ,size_t) ;
 int hx509_set_error_string (int ,int ,int,char*,...) ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static int
evp_md_verify_signature(hx509_context context,
   const struct signature_alg *sig_alg,
   const Certificate *signer,
   const AlgorithmIdentifier *alg,
   const heim_octet_string *data,
   const heim_octet_string *sig)
{
    unsigned char digest[EVP_MAX_MD_SIZE];
    EVP_MD_CTX *ctx;
    size_t sigsize = EVP_MD_size(sig_alg->evp_md());

    if (sig->length != sigsize || sigsize > sizeof(digest)) {
 hx509_set_error_string(context, 0, HX509_CRYPTO_SIG_INVALID_FORMAT,
          "SHA256 sigature have wrong length");
 return HX509_CRYPTO_SIG_INVALID_FORMAT;
    }

    ctx = EVP_MD_CTX_create();
    EVP_DigestInit_ex(ctx, sig_alg->evp_md(), ((void*)0));
    EVP_DigestUpdate(ctx, data->data, data->length);
    EVP_DigestFinal_ex(ctx, digest, ((void*)0));
    EVP_MD_CTX_destroy(ctx);

    if (ct_memcmp(digest, sig->data, sigsize) != 0) {
 hx509_set_error_string(context, 0, HX509_CRYPTO_BAD_SIGNATURE,
          "Bad %s sigature", sig_alg->name);
 return HX509_CRYPTO_BAD_SIGNATURE;
    }

    return 0;
}
