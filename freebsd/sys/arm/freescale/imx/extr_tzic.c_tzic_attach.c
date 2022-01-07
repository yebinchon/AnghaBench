
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tzic_softc {int * tzicregs; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTCNTL_EN ;
 int INTCNTL_NSEN ;
 int INTCNTL_NSEN_MASK ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int TZIC_ENCLEAR (int) ;
 int TZIC_INTCNTL ;
 int TZIC_INTSEC (int) ;
 int TZIC_PRIOMASK ;
 int TZIC_PRIORITY (int) ;
 int TZIC_SYNCCTRL ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct tzic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ tzic_pic_attach (struct tzic_softc*) ;
 struct tzic_softc* tzic_sc ;
 int tzic_write_4 (struct tzic_softc*,int ,int) ;

__attribute__((used)) static int
tzic_attach(device_t dev)
{
 struct tzic_softc *sc = device_get_softc(dev);
 int i;

 if (tzic_sc)
  return (ENXIO);
 tzic_sc = sc;
 sc->dev = dev;

 i = 0;
 sc->tzicregs = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &i,
     RF_ACTIVE);
 if (sc->tzicregs == ((void*)0)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 for (i = 0; i < 4; i++)
  tzic_write_4(sc, TZIC_INTSEC(i), 0xffffffff);


 for (i = 0; i < 4; i++)
  tzic_write_4(sc, TZIC_ENCLEAR(i), 0xffffffff);


 for (i = 0; i < 128 / 4; ++i)
  tzic_write_4(sc, TZIC_PRIORITY(i), 0);





 tzic_write_4(sc, TZIC_PRIOMASK, 0xff);
 tzic_write_4(sc, TZIC_SYNCCTRL, 0);
 tzic_write_4(sc, TZIC_INTCNTL, INTCNTL_NSEN_MASK|INTCNTL_NSEN|INTCNTL_EN);


 if (tzic_pic_attach(sc) != 0) {
  device_printf(dev, "could not attach PIC\n");
  return (ENXIO);
 }

 return (0);
}
