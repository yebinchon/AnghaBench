
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int amp; scalar_t__ debug; scalar_t__ msg; } ;
typedef int SSL ;
typedef TYPE_1__ SRP_ARG ;
typedef int BIGNUM ;


 int BIO_printf (int ,char*) ;
 scalar_t__ BN_BITS ;
 scalar_t__ BN_num_bits (int *) ;
 int BN_print (int ,int *) ;
 scalar_t__ SRP_check_known_gN_param (int *,int *) ;
 int * SSL_get_srp_N (int *) ;
 int * SSL_get_srp_g (int *) ;
 int bio_err ;
 scalar_t__ srp_Verify_N_and_g (int *,int *) ;

__attribute__((used)) static int ssl_srp_verify_param_cb(SSL *s, void *arg)
{
    SRP_ARG *srp_arg = (SRP_ARG *)arg;
    BIGNUM *N = ((void*)0), *g = ((void*)0);

    if (((N = SSL_get_srp_N(s)) == ((void*)0)) || ((g = SSL_get_srp_g(s)) == ((void*)0)))
        return 0;
    if (srp_arg->debug || srp_arg->msg || srp_arg->amp == 1) {
        BIO_printf(bio_err, "SRP parameters:\n");
        BIO_printf(bio_err, "\tN=");
        BN_print(bio_err, N);
        BIO_printf(bio_err, "\n\tg=");
        BN_print(bio_err, g);
        BIO_printf(bio_err, "\n");
    }

    if (SRP_check_known_gN_param(g, N))
        return 1;

    if (srp_arg->amp == 1) {
        if (srp_arg->debug)
            BIO_printf(bio_err,
                       "SRP param N and g are not known params, going to check deeper.\n");






        if (BN_num_bits(g) <= BN_BITS && srp_Verify_N_and_g(N, g))
            return 1;
    }
    BIO_printf(bio_err, "SRP param N and g rejected.\n");
    return 0;
}
