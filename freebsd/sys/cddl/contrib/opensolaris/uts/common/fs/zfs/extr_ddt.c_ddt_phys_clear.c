
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ddt_phys_t ;


 int bzero (int *,int) ;

void
ddt_phys_clear(ddt_phys_t *ddp)
{
 bzero(ddp, sizeof (*ddp));
}
