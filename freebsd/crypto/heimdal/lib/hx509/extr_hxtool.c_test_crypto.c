
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_crypto_options {int pass_strings; } ;
typedef int hx509_verify_ctx ;
typedef int hx509_lock ;
typedef int hx509_certs ;


 int context ;
 int hx509_certs_append (int ,int ,int ,char*) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;
 int hx509_certs_iter_f (int ,int ,int ,int ) ;
 int hx509_err (int ,int,int,char*) ;
 int hx509_lock_init (int ,int *) ;
 int hx509_verify_attach_anchors (int ,int ) ;
 int hx509_verify_init_ctx (int ,int *) ;
 int lock_strings (int ,int *) ;
 int test_one_cert ;

int
test_crypto(struct test_crypto_options *opt, int argc, char ** argv)
{
    hx509_verify_ctx vctx;
    hx509_certs certs;
    hx509_lock lock;
    int i, ret;

    hx509_lock_init(context, &lock);
    lock_strings(lock, &opt->pass_strings);

    ret = hx509_certs_init(context, "MEMORY:test-crypto", 0, ((void*)0), &certs);
    if (ret) hx509_err(context, 1, ret, "hx509_certs_init: MEMORY");

    for (i = 0; i < argc; i++) {
 ret = hx509_certs_append(context, certs, lock, argv[i]);
 if (ret)
     hx509_err(context, 1, ret, "hx509_certs_append");
    }

    ret = hx509_verify_init_ctx(context, &vctx);
    if (ret)
 hx509_err(context, 1, ret, "hx509_verify_init_ctx");

    hx509_verify_attach_anchors(vctx, certs);

    ret = hx509_certs_iter_f(context, certs, test_one_cert, vctx);
    if (ret)
 hx509_err(context, 1, ret, "hx509_cert_iter");

    hx509_certs_free(&certs);

    return 0;
}
