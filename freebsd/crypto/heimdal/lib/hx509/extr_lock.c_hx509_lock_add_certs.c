
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_lock ;
typedef int hx509_context ;
typedef int hx509_certs ;
struct TYPE_3__ {int certs; } ;


 int hx509_certs_merge (int ,int ,int ) ;

int
hx509_lock_add_certs(hx509_context context, hx509_lock lock, hx509_certs certs)
{
    return hx509_certs_merge(context, lock->certs, certs);
}
