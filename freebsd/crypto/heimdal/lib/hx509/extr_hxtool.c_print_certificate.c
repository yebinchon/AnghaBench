
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_validate_ctx ;
typedef int hx509_context ;
typedef int hx509_cert ;


 int HX509_VALIDATE_F_VALIDATE ;
 int HX509_VALIDATE_F_VERBOSE ;
 scalar_t__ _hx509_cert_private_key (int ) ;
 int errx (int,char*) ;
 char* hx509_cert_get_friendly_name (int ) ;
 int hx509_print_cert (int ,int ,int *) ;
 int hx509_print_stdout ;
 int hx509_validate_cert (int ,int ,int ) ;
 int hx509_validate_ctx_add_flags (int ,int ) ;
 int hx509_validate_ctx_free (int ) ;
 int hx509_validate_ctx_init (int ,int *) ;
 int hx509_validate_ctx_set_print (int ,int ,int ) ;
 int printf (char*,char const*) ;
 int stdout ;

__attribute__((used)) static void
print_certificate(hx509_context hxcontext, hx509_cert cert, int verbose)
{
    const char *fn;
    int ret;

    fn = hx509_cert_get_friendly_name(cert);
    if (fn)
 printf("    friendly name: %s\n", fn);
    printf("    private key: %s\n",
    _hx509_cert_private_key(cert) ? "yes" : "no");

    ret = hx509_print_cert(hxcontext, cert, ((void*)0));
    if (ret)
 errx(1, "failed to print cert");

    if (verbose) {
 hx509_validate_ctx vctx;

 hx509_validate_ctx_init(hxcontext, &vctx);
 hx509_validate_ctx_set_print(vctx, hx509_print_stdout, stdout);
 hx509_validate_ctx_add_flags(vctx, HX509_VALIDATE_F_VALIDATE);
 hx509_validate_ctx_add_flags(vctx, HX509_VALIDATE_F_VERBOSE);

 hx509_validate_cert(hxcontext, vctx, cert);

 hx509_validate_ctx_free(vctx);
    }
}
