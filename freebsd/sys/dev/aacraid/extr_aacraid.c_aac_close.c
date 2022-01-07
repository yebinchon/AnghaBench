
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {struct aac_softc* si_drv1; } ;
struct aac_softc {int dummy; } ;


 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static int
aac_close(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct aac_softc *sc;

 sc = dev->si_drv1;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 return 0;
}
