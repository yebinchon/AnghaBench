
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fv_softc {int dummy; } ;
typedef int device_t ;


 int MII_PREAMBLE ;
 int MII_WRCMD ;
 struct fv_softc* device_get_softc (int ) ;
 int fv_miibus_turnaround (struct fv_softc*,int) ;
 int fv_miibus_writebits (struct fv_softc*,int,int) ;
 int miibus_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
fv_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct fv_softc * sc = device_get_softc(dev);

 mtx_lock(&miibus_mtx);
 fv_miibus_writebits(sc, MII_PREAMBLE, 32);
 fv_miibus_writebits(sc, MII_WRCMD, 4);
 fv_miibus_writebits(sc, phy, 5);
 fv_miibus_writebits(sc, reg, 5);
 fv_miibus_turnaround(sc, MII_WRCMD);
 fv_miibus_writebits(sc, data, 16);
 mtx_unlock(&miibus_mtx);

 return (0);
}
