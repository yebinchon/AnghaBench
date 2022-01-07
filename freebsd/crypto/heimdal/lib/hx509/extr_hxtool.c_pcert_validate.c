
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct validate_options {int pass_strings; } ;
typedef int hx509_validate_ctx ;
typedef int hx509_lock ;
typedef int hx509_certs ;


 int HX509_VALIDATE_F_VALIDATE ;
 int context ;
 int errx (int,char*,int) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int ,int *) ;
 int hx509_certs_iter_f (int ,int ,int ,int ) ;
 int hx509_lock_free (int ) ;
 int hx509_lock_init (int ,int *) ;
 int hx509_print_stdout ;
 int hx509_validate_ctx_add_flags (int ,int ) ;
 int hx509_validate_ctx_free (int ) ;
 int hx509_validate_ctx_init (int ,int *) ;
 int hx509_validate_ctx_set_print (int ,int ,int ) ;
 int lock_strings (int ,int *) ;
 int stdout ;
 int validate_f ;

int
pcert_validate(struct validate_options *opt, int argc, char **argv)
{
    hx509_validate_ctx ctx;
    hx509_certs certs;
    hx509_lock lock;

    hx509_lock_init(context, &lock);
    lock_strings(lock, &opt->pass_strings);

    hx509_validate_ctx_init(context, &ctx);
    hx509_validate_ctx_set_print(ctx, hx509_print_stdout, stdout);
    hx509_validate_ctx_add_flags(ctx, HX509_VALIDATE_F_VALIDATE);

    while(argc--) {
 int ret;
 ret = hx509_certs_init(context, argv[0], 0, lock, &certs);
 if (ret)
     errx(1, "hx509_certs_init: %d", ret);
 hx509_certs_iter_f(context, certs, validate_f, ctx);
 hx509_certs_free(&certs);
 argv++;
    }
    hx509_validate_ctx_free(ctx);

    hx509_lock_free(lock);

    return 0;
}
