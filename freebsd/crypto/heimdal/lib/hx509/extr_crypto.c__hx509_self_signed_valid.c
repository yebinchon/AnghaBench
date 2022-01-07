
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct signature_alg {int flags; int name; } ;
typedef int hx509_context ;
struct TYPE_3__ {int algorithm; } ;
typedef TYPE_1__ AlgorithmIdentifier ;


 int HX509_CRYPTO_ALGORITHM_BEST_BEFORE ;
 int HX509_SIG_ALG_NO_SUPPORTED ;
 int SELF_SIGNED_OK ;
 struct signature_alg* find_sig_alg (int *) ;
 int hx509_clear_error_string (int ) ;
 int hx509_set_error_string (int ,int ,int,char*,int ) ;

int
_hx509_self_signed_valid(hx509_context context,
    const AlgorithmIdentifier *alg)
{
    const struct signature_alg *md;

    md = find_sig_alg(&alg->algorithm);
    if (md == ((void*)0)) {
 hx509_clear_error_string(context);
 return HX509_SIG_ALG_NO_SUPPORTED;
    }
    if ((md->flags & SELF_SIGNED_OK) == 0) {
 hx509_set_error_string(context, 0, HX509_CRYPTO_ALGORITHM_BEST_BEFORE,
          "Algorithm %s not trusted for self signatures",
          md->name);
 return HX509_CRYPTO_ALGORITHM_BEST_BEFORE;
    }
    return 0;
}
