
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct signature_alg {int flags; int (* create_signature ) (int ,struct signature_alg const*,int const,TYPE_1__ const*,int const*,TYPE_1__*,int *) ;} ;
typedef int hx509_private_key ;
typedef int hx509_context ;
typedef int heim_octet_string ;
struct TYPE_6__ {int algorithm; } ;
typedef TYPE_1__ AlgorithmIdentifier ;


 int HX509_CRYPTO_SIG_NO_CONF ;
 int HX509_SIG_ALG_NO_SUPPORTED ;
 int PROVIDE_CONF ;
 struct signature_alg* find_sig_alg (int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int stub1 (int ,struct signature_alg const*,int const,TYPE_1__ const*,int const*,TYPE_1__*,int *) ;

int
_hx509_create_signature(hx509_context context,
   const hx509_private_key signer,
   const AlgorithmIdentifier *alg,
   const heim_octet_string *data,
   AlgorithmIdentifier *signatureAlgorithm,
   heim_octet_string *sig)
{
    const struct signature_alg *md;

    md = find_sig_alg(&alg->algorithm);
    if (md == ((void*)0)) {
 hx509_set_error_string(context, 0, HX509_SIG_ALG_NO_SUPPORTED,
     "algorithm no supported");
 return HX509_SIG_ALG_NO_SUPPORTED;
    }

    if (signer && (md->flags & PROVIDE_CONF) == 0) {
 hx509_set_error_string(context, 0, HX509_SIG_ALG_NO_SUPPORTED,
     "algorithm provides no conf");
 return HX509_CRYPTO_SIG_NO_CONF;
    }

    return (*md->create_signature)(context, md, signer, alg, data,
       signatureAlgorithm, sig);
}
