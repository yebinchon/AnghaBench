
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int bus_size_t ;
struct TYPE_2__ {int * res; } ;


 int KASSERT (int ,char*) ;
 size_t MEMRES ;
 int bus_write_4 (int ,int ,int ) ;
 TYPE_1__* imx6_anatop_sc ;

void
imx6_anatop_write_4(bus_size_t offset, uint32_t value)
{

 KASSERT(imx6_anatop_sc != ((void*)0), ("imx6_anatop_write_4 sc NULL"));

 bus_write_4(imx6_anatop_sc->res[MEMRES], offset, value);
}
