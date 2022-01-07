
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int * tc_poll_pps; } ;
struct dmtpps_softc {TYPE_1__ tc; } ;
struct cdev {struct dmtpps_softc* si_drv1; } ;


 int dmtpps_set_hw_capture (struct dmtpps_softc*,int) ;

__attribute__((used)) static int
dmtpps_close(struct cdev *dev, int flags, int fmt,
    struct thread *td)
{
 struct dmtpps_softc *sc;

 sc = dev->si_drv1;





 sc->tc.tc_poll_pps = ((void*)0);
 dmtpps_set_hw_capture(sc, 1);

 return 0;
}
