
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_mbox_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int TI_MBOX_MESSAGE (int) ;
 struct ti_mbox_softc* device_get_softc (int ) ;
 int ti_mbox_reg_read (struct ti_mbox_softc*,int ) ;

__attribute__((used)) static int
ti_mbox_read(device_t dev, int chan, uint32_t *data)
{
 struct ti_mbox_softc *sc;

 if (chan < 0 || chan > 7)
  return (EINVAL);
 sc = device_get_softc(dev);

 return (ti_mbox_reg_read(sc, TI_MBOX_MESSAGE(chan)));
}
