
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ddp_refcnt; } ;
typedef TYPE_1__ ddt_phys_t ;



void
ddt_phys_addref(ddt_phys_t *ddp)
{
 ddp->ddp_refcnt++;
}
