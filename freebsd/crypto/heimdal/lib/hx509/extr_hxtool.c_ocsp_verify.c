
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocsp_verify_options {int * ocsp_file_string; } ;
typedef int hx509_lock ;
typedef int hx509_certs ;
typedef int heim_octet_string ;


 int _hx509_map_file_os (int *,int *) ;
 int _hx509_unmap_file_os (int *) ;
 int context ;
 int err (int,char*,char*,int) ;
 int errx (int,char*) ;
 int hx509_certs_append (int ,int ,int ,char*) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;
 int hx509_certs_iter_f (int ,int ,int ,int *) ;
 int hx509_err (int ,int,int,char*,...) ;
 int hx509_lock_free (int ) ;
 int hx509_lock_init (int ,int *) ;
 int verify_o ;

int
ocsp_verify(struct ocsp_verify_options *opt, int argc, char **argv)
{
    hx509_lock lock;
    hx509_certs certs;
    int ret, i;
    heim_octet_string os;

    hx509_lock_init(context, &lock);

    if (opt->ocsp_file_string == ((void*)0))
 errx(1, "no ocsp file given");

    ret = _hx509_map_file_os(opt->ocsp_file_string, &os);
    if (ret)
 err(1, "map_file: %s: %d", argv[0], ret);

    ret = hx509_certs_init(context, "MEMORY:test-certs", 0, ((void*)0), &certs);
    if (ret) hx509_err(context, 1, ret, "hx509_certs_init: MEMORY");

    for (i = 0; i < argc; i++) {
 ret = hx509_certs_append(context, certs, lock, argv[i]);
 if (ret)
     hx509_err(context, 1, ret, "hx509_certs_append: %s", argv[i]);
    }

    ret = hx509_certs_iter_f(context, certs, verify_o, &os);

    hx509_certs_free(&certs);
    _hx509_unmap_file_os(&os);
    hx509_lock_free(lock);

    return ret;
}
