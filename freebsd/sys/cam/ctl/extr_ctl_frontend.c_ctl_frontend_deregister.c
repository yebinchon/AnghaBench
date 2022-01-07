
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_softc {int ctl_lock; int num_frontends; int fe_list; } ;
struct ctl_frontend {int (* shutdown ) () ;char* name; } ;


 int STAILQ_REMOVE (int *,struct ctl_frontend*,int ,int ) ;
 struct ctl_softc* control_softc ;
 int ctl_frontend ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,char*,int) ;
 int stub1 () ;

int
ctl_frontend_deregister(struct ctl_frontend *fe)
{
 struct ctl_softc *softc = control_softc;
 int error;


 if (fe->shutdown != ((void*)0)) {
  if ((error = fe->shutdown()) != 0) {
   printf("%s frontend shutdown error: %d\n",
       fe->name, error);
   return (error);
  }
 }

 mtx_lock(&softc->ctl_lock);
 STAILQ_REMOVE(&softc->fe_list, fe, ctl_frontend, links);
 softc->num_frontends--;
 mtx_unlock(&softc->ctl_lock);
 return (0);
}
