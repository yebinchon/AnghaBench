
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_FP_TEXT ;
 int BIO_NOCLOSE ;
 int BIO_ctrl (int *,int ,int ,void*) ;
 int * BIO_f_linebuffer () ;
 int BIO_new (int *) ;
 int * BIO_new_fp (int ,int) ;
 int * BIO_push (int ,int *) ;
 int PREFIX_CTRL_SET_PREFIX ;
 int * apps_bf_prefix () ;
 void* getenv (char*) ;
 scalar_t__ istext (int) ;
 int * prefix_method ;
 int stdout ;

BIO *dup_bio_out(int format)
{
    BIO *b = BIO_new_fp(stdout,
                        BIO_NOCLOSE | (istext(format) ? BIO_FP_TEXT : 0));
    void *prefix = ((void*)0);






    if (istext(format) && (prefix = getenv("HARNESS_OSSL_PREFIX")) != ((void*)0)) {
        if (prefix_method == ((void*)0))
            prefix_method = apps_bf_prefix();
        b = BIO_push(BIO_new(prefix_method), b);
        BIO_ctrl(b, PREFIX_CTRL_SET_PREFIX, 0, prefix);
    }

    return b;
}
