
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sa_family; } ;
struct TYPE_5__ {TYPE_1__ sa; } ;
typedef TYPE_2__ BIO_ADDR ;



int BIO_ADDR_family(const BIO_ADDR *ap)
{
    return ap->sa.sa_family;
}
