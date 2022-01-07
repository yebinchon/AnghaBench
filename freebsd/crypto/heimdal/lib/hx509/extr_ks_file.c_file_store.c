
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct store_ctx {int * f; int format; } ;
struct ks_file {int certs; int format; int fn; } ;
typedef int hx509_lock ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int ENOENT ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int hx509_certs_iter_f (int ,int ,int ,struct store_ctx*) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int rk_cloexec_file (int *) ;
 int store_func ;

__attribute__((used)) static int
file_store(hx509_context context,
    hx509_certs certs, void *data, int flags, hx509_lock lock)
{
    struct ks_file *ksf = data;
    struct store_ctx sc;
    int ret;

    sc.f = fopen(ksf->fn, "w");
    if (sc.f == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOENT,
          "Failed to open file %s for writing");
 return ENOENT;
    }
    rk_cloexec_file(sc.f);
    sc.format = ksf->format;

    ret = hx509_certs_iter_f(context, ksf->certs, store_func, &sc);
    fclose(sc.f);
    return ret;
}
