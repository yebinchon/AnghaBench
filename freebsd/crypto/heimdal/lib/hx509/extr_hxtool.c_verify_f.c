
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct verify {int errors; scalar_t__ hostname; int count; int chain; int ctx; } ;
typedef int hx509_context ;
typedef int hx509_cert ;


 int HX509_HN_HOSTNAME ;
 int hx509_free_error_string (char*) ;
 char* hx509_get_error_string (int ,int) ;
 int hx509_verify_hostname (int ,int ,int ,int ,scalar_t__,int *,int ) ;
 int hx509_verify_path (int ,int ,int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int
verify_f(hx509_context hxcontext, void *ctx, hx509_cert c)
{
    struct verify *v = ctx;
    int ret;

    ret = hx509_verify_path(hxcontext, v->ctx, c, v->chain);
    if (ret) {
 char *s = hx509_get_error_string(hxcontext, ret);
 printf("verify_path: %s: %d\n", s, ret);
 hx509_free_error_string(s);
 v->errors++;
    } else {
 v->count++;
 printf("path ok\n");
    }

    if (v->hostname) {
 ret = hx509_verify_hostname(hxcontext, c, 0, HX509_HN_HOSTNAME,
        v->hostname, ((void*)0), 0);
 if (ret) {
     printf("verify_hostname: %d\n", ret);
     v->errors++;
 }
    }

    return 0;
}
