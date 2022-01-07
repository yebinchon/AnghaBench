
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_softc {scalar_t__ event; scalar_t__ cmd; int dev; } ;
typedef int device_t ;


 int M_AMDVI ;
 int amdvi_free_evt_intr_res (int ) ;
 int free (scalar_t__,int ) ;

int
amdvi_teardown_hw(struct amdvi_softc *softc)
{
 device_t dev;

 dev = softc->dev;




 amdvi_free_evt_intr_res(dev);

 if (softc->cmd)
  free(softc->cmd, M_AMDVI);

 if (softc->event)
  free(softc->event, M_AMDVI);

 return (0);
}
