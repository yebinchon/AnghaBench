
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_s {int verbose; scalar_t__ counter; } ;
struct print_options {scalar_t__ info_flag; scalar_t__ never_fail_flag; int pass_strings; int content_flag; } ;
typedef int hx509_lock ;
typedef int hx509_certs ;


 int context ;
 int hx509_certs_free (int *) ;
 int hx509_certs_info (int ,int ,int *,int *) ;
 int hx509_certs_init (int ,char*,int ,int ,int *) ;
 int hx509_certs_iter_f (int ,int ,int ,struct print_s*) ;
 int hx509_err (int ,int,int,char*) ;
 int hx509_lock_free (int ) ;
 int hx509_lock_init (int ,int *) ;
 int lock_strings (int ,int *) ;
 int print_f ;
 int printf (char*,int) ;

int
pcert_print(struct print_options *opt, int argc, char **argv)
{
    hx509_certs certs;
    hx509_lock lock;
    struct print_s s;

    s.counter = 0;
    s.verbose = opt->content_flag;

    hx509_lock_init(context, &lock);
    lock_strings(lock, &opt->pass_strings);

    while(argc--) {
 int ret;
 ret = hx509_certs_init(context, argv[0], 0, lock, &certs);
 if (ret) {
     if (opt->never_fail_flag) {
  printf("ignoreing failure: %d\n", ret);
  continue;
     }
     hx509_err(context, 1, ret, "hx509_certs_init");
 }
 if (opt->info_flag)
     hx509_certs_info(context, certs, ((void*)0), ((void*)0));
 hx509_certs_iter_f(context, certs, print_f, &s);
 hx509_certs_free(&certs);
 argv++;
    }

    hx509_lock_free(lock);

    return 0;
}
