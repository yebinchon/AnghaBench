
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct certificate_copy_options {int out_pass_string; int in_pass_strings; } ;
typedef int * hx509_lock ;
typedef int hx509_certs ;


 int HX509_CERTS_CREATE ;
 int context ;
 int errx (int,char*,int ,int) ;
 int hx509_certs_append (int ,int ,int *,char*) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;
 int hx509_certs_store (int ,int ,int ,int *) ;
 int hx509_err (int ,int,int,char*) ;
 int hx509_lock_command_string (int *,int ) ;
 int hx509_lock_free (int *) ;
 int hx509_lock_init (int ,int **) ;
 int lock_strings (int *,int *) ;

int
certificate_copy(struct certificate_copy_options *opt, int argc, char **argv)
{
    hx509_certs certs;
    hx509_lock inlock, outlock = ((void*)0);
    int ret;

    hx509_lock_init(context, &inlock);
    lock_strings(inlock, &opt->in_pass_strings);

    if (opt->out_pass_string) {
 hx509_lock_init(context, &outlock);
 ret = hx509_lock_command_string(outlock, opt->out_pass_string);
 if (ret)
     errx(1, "hx509_lock_command_string: %s: %d",
   opt->out_pass_string, ret);
    }

    ret = hx509_certs_init(context, argv[argc - 1],
      HX509_CERTS_CREATE, inlock, &certs);
    if (ret)
 hx509_err(context, 1, ret, "hx509_certs_init");

    while(argc-- > 1) {
 int retx;
 retx = hx509_certs_append(context, certs, inlock, argv[0]);
 if (retx)
     hx509_err(context, 1, retx, "hx509_certs_append");
 argv++;
    }

    ret = hx509_certs_store(context, certs, 0, outlock);
 if (ret)
     hx509_err(context, 1, ret, "hx509_certs_store");

    hx509_certs_free(&certs);
    hx509_lock_free(inlock);
    hx509_lock_free(outlock);

    return 0;
}
