
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_lock ;
typedef int hx509_context ;
typedef int hx509_certs ;
struct TYPE_3__ {int certs; } ;


 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;

void
hx509_lock_reset_certs(hx509_context context, hx509_lock lock)
{
    hx509_certs certs = lock->certs;
    int ret;

    ret = hx509_certs_init(context,
      "MEMORY:locks-internal",
      0,
      ((void*)0),
      &lock->certs);
    if (ret == 0)
 hx509_certs_free(&certs);
    else
 lock->certs = certs;
}
