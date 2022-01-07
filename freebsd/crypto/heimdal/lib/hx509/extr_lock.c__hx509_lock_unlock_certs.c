
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_lock ;
typedef int hx509_certs ;
struct TYPE_3__ {int certs; } ;



hx509_certs
_hx509_lock_unlock_certs(hx509_lock lock)
{
    return lock->certs;
}
