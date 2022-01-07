
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;
typedef int X509 ;


 int BIO_printf (int ,char*,...) ;
 int * X509_STORE_CTX_get_current_cert (int *) ;
 int X509_STORE_CTX_get_error (int *) ;
 int X509_STORE_CTX_get_error_depth (int *) ;
 int X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT ;
 int X509_get_subject_name (int *) ;
 int X509_verify_cert_error_string (int) ;
 int bio_err ;
 int print_name (int ,int *,int ,int ) ;

__attribute__((used)) static int callb(int ok, X509_STORE_CTX *ctx)
{
    int err;
    X509 *err_cert;





    err = X509_STORE_CTX_get_error(ctx);
    if (err == X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT)
        return 1;






    if (ok) {
        BIO_printf(bio_err,
                   "error with certificate to be certified - should be self signed\n");
        return 0;
    } else {
        err_cert = X509_STORE_CTX_get_current_cert(ctx);
        print_name(bio_err, ((void*)0), X509_get_subject_name(err_cert), 0);
        BIO_printf(bio_err,
                   "error with certificate - error %d at depth %d\n%s\n", err,
                   X509_STORE_CTX_get_error_depth(ctx),
                   X509_verify_cert_error_string(err));
        return 1;
    }
}
