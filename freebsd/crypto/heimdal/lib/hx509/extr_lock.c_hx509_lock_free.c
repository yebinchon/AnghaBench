
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* hx509_lock ;
struct TYPE_6__ {int certs; } ;


 int free (TYPE_1__*) ;
 int hx509_certs_free (int *) ;
 int hx509_lock_reset_passwords (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void
hx509_lock_free(hx509_lock lock)
{
    if (lock) {
 hx509_certs_free(&lock->certs);
 hx509_lock_reset_passwords(lock);
 memset(lock, 0, sizeof(*lock));
 free(lock);
    }
}
