
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {struct aac_softc* si_drv1; } ;
struct aac_softc {int aac_dev; } ;


 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int aac_cdevpriv_dtor ;
 int devfs_set_cdevpriv (struct aac_softc*,int ) ;
 int device_busy (int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static int
aac_open(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct aac_softc *sc;

 sc = dev->si_drv1;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 device_busy(sc->aac_dev);
 devfs_set_cdevpriv(sc, aac_cdevpriv_dtor);

 return 0;
}
