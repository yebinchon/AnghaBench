
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {scalar_t__ dev_softc_alloc; int * dev_sc; } ;


 int M_DEVBUF ;
 int free (int *,int ) ;

void
device_set_softc(device_t dev, void *softc)
{
 if (dev->dev_softc_alloc) {
  free(dev->dev_sc, M_DEVBUF);
  dev->dev_sc = ((void*)0);
 }
 dev->dev_sc = softc;
 dev->dev_softc_alloc = 0;
}
