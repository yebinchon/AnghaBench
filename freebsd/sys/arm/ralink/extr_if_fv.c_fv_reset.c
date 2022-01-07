
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fv_softc {int fv_dev; } ;


 int BUSMODE_SWR ;
 int CSR_BUSMODE ;
 int CSR_READ_4 (struct fv_softc*,int ) ;
 int CSR_WRITE_4 (struct fv_softc*,int ,int) ;
 int DELAY (int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
fv_reset(struct fv_softc *sc)
{
 int i;

 CSR_WRITE_4(sc, CSR_BUSMODE, BUSMODE_SWR);





 DELAY(1000);
 CSR_WRITE_4(sc, CSR_BUSMODE, 0);

 for (i = 0; i < 1000; i++) {




  DELAY(1000);
  if ((CSR_READ_4(sc, CSR_BUSMODE) & BUSMODE_SWR) == 0)
   break;
 }

 if (CSR_READ_4(sc, CSR_BUSMODE) & BUSMODE_SWR)
  device_printf(sc->fv_dev, "reset time out\n");

 DELAY(1000);
}
