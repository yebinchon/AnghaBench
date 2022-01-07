
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int hx509_context ;
typedef int hx509_cert ;
struct TYPE_2__ {int length; int data; } ;
typedef TYPE_1__ heim_octet_string ;


 int context ;
 int hx509_free_error_string (char*) ;
 char* hx509_get_error_string (int ,int) ;
 int hx509_ocsp_verify (int ,int ,int ,int ,int ,int ,scalar_t__*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
verify_o(hx509_context hxcontext, void *ctx, hx509_cert c)
{
    heim_octet_string *os = ctx;
    time_t expiration;
    int ret;

    ret = hx509_ocsp_verify(context, 0, c, 0,
       os->data, os->length, &expiration);
    if (ret) {
 char *s = hx509_get_error_string(hxcontext, ret);
 printf("ocsp_verify: %s: %d\n", s, ret);
 hx509_free_error_string(s);
    } else
 printf("expire: %d\n", (int)expiration);

    return ret;
}
