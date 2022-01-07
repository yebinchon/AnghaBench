
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_cert ;
typedef int _hx509_cert_release_func ;
struct TYPE_3__ {void* ctx; int release; } ;



void
_hx509_cert_set_release(hx509_cert cert,
   _hx509_cert_release_func release,
   void *ctx)
{
    cert->release = release;
    cert->ctx = ctx;
}
