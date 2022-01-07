
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ai; } ;
typedef TYPE_1__ krb5_krbhst_info ;


 int free (TYPE_1__*) ;
 int freeaddrinfo (int *) ;

void
_krb5_free_krbhst_info(krb5_krbhst_info *hi)
{
    if (hi->ai != ((void*)0))
 freeaddrinfo(hi->ai);
    free(hi);
}
