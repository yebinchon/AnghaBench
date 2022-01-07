
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct signature_alg {scalar_t__ best_before; int name; } ;
typedef int hx509_context ;
struct TYPE_3__ {int algorithm; } ;
typedef TYPE_1__ AlgorithmIdentifier ;


 int HX509_CRYPTO_ALGORITHM_BEST_BEFORE ;
 int HX509_SIG_ALG_NO_SUPPORTED ;
 struct signature_alg* find_sig_alg (int *) ;
 int hx509_clear_error_string (int ) ;
 int hx509_set_error_string (int ,int ,int,char*,int ) ;

int
_hx509_signature_best_before(hx509_context context,
        const AlgorithmIdentifier *alg,
        time_t t)
{
    const struct signature_alg *md;

    md = find_sig_alg(&alg->algorithm);
    if (md == ((void*)0)) {
 hx509_clear_error_string(context);
 return HX509_SIG_ALG_NO_SUPPORTED;
    }
    if (md->best_before && md->best_before < t) {
 hx509_set_error_string(context, 0, HX509_CRYPTO_ALGORITHM_BEST_BEFORE,
          "Algorithm %s has passed it best before date",
          md->name);
 return HX509_CRYPTO_ALGORITHM_BEST_BEFORE;
    }
    return 0;
}
