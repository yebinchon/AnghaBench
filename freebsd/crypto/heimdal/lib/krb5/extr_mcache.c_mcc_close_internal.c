
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcnt; int name; } ;
typedef TYPE_1__ krb5_mcache ;


 scalar_t__ MISDEAD (TYPE_1__*) ;
 int free (int ) ;

__attribute__((used)) static int
mcc_close_internal(krb5_mcache *m)
{
    if (--m->refcnt != 0)
 return 0;

    if (MISDEAD(m)) {
 free (m->name);
 return 1;
    }
    return 0;
}
