
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_softc {int ctl_lock; int num_backends; int be_list; } ;
struct ctl_backend_driver {int (* shutdown ) () ;char* name; } ;


 int STAILQ_REMOVE (int *,struct ctl_backend_driver*,int ,int ) ;
 struct ctl_softc* control_softc ;
 int ctl_backend_driver ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,char*,int) ;
 int stub1 () ;

int
ctl_backend_deregister(struct ctl_backend_driver *be)
{
 struct ctl_softc *softc = control_softc;
 int error;


 if (be->shutdown != ((void*)0)) {
  if ((error = be->shutdown()) != 0) {
   printf("%s backend shutdown error: %d\n",
       be->name, error);
   return (error);
  }
 }

 mtx_lock(&softc->ctl_lock);
 STAILQ_REMOVE(&softc->be_list, be, ctl_backend_driver, links);
 softc->num_backends--;
 mtx_unlock(&softc->ctl_lock);
 return (0);
}
