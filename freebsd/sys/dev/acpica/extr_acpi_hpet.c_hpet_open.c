
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct hpet_softc {int mmap_allow; } ;
struct cdev {struct hpet_softc* si_drv1; } ;


 int EPERM ;

__attribute__((used)) static int
hpet_open(struct cdev *cdev, int oflags, int devtype, struct thread *td)
{
 struct hpet_softc *sc;

 sc = cdev->si_drv1;
 if (!sc->mmap_allow)
  return (EPERM);
 else
  return (0);
}
