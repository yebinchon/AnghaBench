
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;
typedef int krb5_storage ;
typedef int krb5_socklen_t ;
struct TYPE_11__ {int pkinit_kdc_revoke; int pkinit_kdc_cert_pool; int * pkinit_kdc_anchors; int * pkinit_kdc_identity; scalar_t__ enable_pkinit; } ;
typedef TYPE_1__ krb5_kdc_configuration ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_12__ {scalar_t__ length; int * data; } ;
typedef TYPE_2__ krb5_data ;
typedef int krb5_context ;
typedef int krb5_address ;
typedef int astr ;
typedef int Der_type ;
typedef int Der_class ;


 scalar_t__ HEIM_ERR_EOF ;
 scalar_t__ KRB5_PROG_ATYPE_NOSUPP ;
 int MAKE_TAG (int ,int ,int ) ;
 int O_RDONLY ;
 int args ;
 scalar_t__ der_get_tag (int *,scalar_t__,int *,int *,unsigned int*,int *) ;
 int err (int,char*,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 scalar_t__ help_flag ;
 int kdc_openlog (int ,char*,TYPE_1__*) ;
 scalar_t__ krb5_addr2sockaddr (int ,int *,struct sockaddr*,int*,int) ;
 int krb5_data_free (TYPE_2__*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*,...) ;
 int krb5_free_address (int ,int *) ;
 int krb5_free_context (int ) ;
 scalar_t__ krb5_init_context (int *) ;
 scalar_t__ krb5_kdc_get_config (int ,TYPE_1__**) ;
 int krb5_kdc_pk_initialize (int ,TYPE_1__*,int *,int *,int ,int ) ;
 scalar_t__ krb5_kdc_process_request (int ,TYPE_1__*,int *,scalar_t__,TYPE_2__*,int *,char*,struct sockaddr*,int ) ;
 scalar_t__ krb5_kdc_set_dbinfo (int ,TYPE_1__*) ;
 int krb5_kdc_update_time (struct timeval*) ;
 scalar_t__ krb5_print_address (int *,char*,int,int *) ;
 scalar_t__ krb5_ret_address (int *,int *) ;
 scalar_t__ krb5_ret_data (int *,TYPE_2__*) ;
 scalar_t__ krb5_ret_uint32 (int *,int*) ;
 int krb5_set_real_time (int ,int,int ) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_fd (int) ;
 int num_args ;
 int open (char*,int ) ;
 int print_version (int *) ;
 int printf (char*,...) ;
 int setprogname (char*) ;
 int usage (int) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_kdc_configuration *config;
    krb5_storage *sp;
    int fd, optidx = 0;

    setprogname(argv[0]);

    if(getarg(args, num_args, argc, argv, &optidx))
 usage(1);

    if(help_flag)
 usage(0);

    if(version_flag){
 print_version(((void*)0));
 exit(0);
    }

    ret = krb5_init_context(&context);
    if (ret)
 errx (1, "krb5_init_context failed to parse configuration file");

    ret = krb5_kdc_get_config(context, &config);
    if (ret)
 krb5_err(context, 1, ret, "krb5_kdc_default_config");

    kdc_openlog(context, "kdc-replay", config);

    ret = krb5_kdc_set_dbinfo(context, config);
    if (ret)
 krb5_err(context, 1, ret, "krb5_kdc_set_dbinfo");
    if (argc != 2)
 errx(1, "argc != 2");

    printf("kdc replay\n");

    fd = open(argv[1], O_RDONLY);
    if (fd < 0)
 err(1, "open: %s", argv[1]);

    sp = krb5_storage_from_fd(fd);
    if (sp == ((void*)0))
 krb5_errx(context, 1, "krb5_storage_from_fd");

    while(1) {
 struct sockaddr_storage sa;
 krb5_socklen_t salen = sizeof(sa);
 struct timeval tv;
 krb5_address a;
 krb5_data d, r;
 uint32_t t, clty, tag;
 char astr[80];

 ret = krb5_ret_uint32(sp, &t);
 if (ret == HEIM_ERR_EOF)
     break;
 else if (ret)
     krb5_errx(context, 1, "krb5_ret_uint32(version)");
 if (t != 1)
     krb5_errx(context, 1, "version not 1");
 ret = krb5_ret_uint32(sp, &t);
 if (ret)
     krb5_errx(context, 1, "krb5_ret_uint32(time)");
 ret = krb5_ret_address(sp, &a);
 if (ret)
     krb5_errx(context, 1, "krb5_ret_address");
 ret = krb5_ret_data(sp, &d);
 if (ret)
     krb5_errx(context, 1, "krb5_ret_data");
 ret = krb5_ret_uint32(sp, &clty);
 if (ret)
     krb5_errx(context, 1, "krb5_ret_uint32(class|type)");
 ret = krb5_ret_uint32(sp, &tag);
 if (ret)
     krb5_errx(context, 1, "krb5_ret_uint32(tag)");


 ret = krb5_addr2sockaddr (context, &a, (struct sockaddr *)&sa,
      &salen, 88);
 if (ret == KRB5_PROG_ATYPE_NOSUPP)
     goto out;
 else if (ret)
     krb5_err(context, 1, ret, "krb5_addr2sockaddr");

 ret = krb5_print_address(&a, astr, sizeof(astr), ((void*)0));
 if (ret)
     krb5_err(context, 1, ret, "krb5_print_address");

 printf("processing request from %s, %lu bytes\n",
        astr, (unsigned long)d.length);

 r.length = 0;
 r.data = ((void*)0);

 tv.tv_sec = t;
 tv.tv_usec = 0;

 krb5_kdc_update_time(&tv);
 krb5_set_real_time(context, tv.tv_sec, 0);

 ret = krb5_kdc_process_request(context, config, d.data, d.length,
           &r, ((void*)0), astr,
           (struct sockaddr *)&sa, 0);
 if (ret)
     krb5_err(context, 1, ret, "krb5_kdc_process_request");

 if (r.length) {
     Der_class cl;
     Der_type ty;
     unsigned int tag2;
     ret = der_get_tag (r.data, r.length,
          &cl, &ty, &tag2, ((void*)0));
     if (MAKE_TAG(cl, ty, 0) != clty)
  krb5_errx(context, 1, "class|type mismatch: %d != %d",
     (int)MAKE_TAG(cl, ty, 0), (int)clty);
     if (tag != tag2)
  krb5_errx(context, 1, "tag mismatch");

     krb5_data_free(&r);
 } else {
     if (clty != 0xffffffff)
  krb5_errx(context, 1, "clty not invalid");
     if (tag != 0xffffffff)
  krb5_errx(context, 1, "tag not invalid");
 }

    out:
 krb5_data_free(&d);
 krb5_free_address(context, &a);
    }

    krb5_storage_free(sp);
    krb5_free_context(context);

    printf("done\n");

    return 0;
}
