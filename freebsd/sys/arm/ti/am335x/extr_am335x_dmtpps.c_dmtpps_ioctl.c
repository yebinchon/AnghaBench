
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct dmtpps_softc {int pps_mtx; int pps_state; } ;
struct cdev {struct dmtpps_softc* si_drv1; } ;
typedef int caddr_t ;


 int dmtpps_set_hw_capture (struct dmtpps_softc*,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int pps_ioctl (int ,int ,int *) ;

__attribute__((used)) static int
dmtpps_ioctl(struct cdev *dev, u_long cmd, caddr_t data,
    int flags, struct thread *td)
{
 struct dmtpps_softc *sc;
 int err;

 sc = dev->si_drv1;


 mtx_lock_spin(&sc->pps_mtx);
 err = pps_ioctl(cmd, data, &sc->pps_state);
 mtx_unlock_spin(&sc->pps_mtx);
 if (err != 0)
  return (err);





 dmtpps_set_hw_capture(sc, 0);

 return (err);
}
