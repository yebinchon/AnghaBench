
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _hx509_password {int dummy; } ;
typedef TYPE_1__* hx509_lock ;
struct TYPE_3__ {struct _hx509_password const password; } ;



const struct _hx509_password *
_hx509_lock_get_passwords(hx509_lock lock)
{
    return &lock->password;
}
