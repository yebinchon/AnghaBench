
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fv_softc {int dummy; } ;


 int FV_LOCK (struct fv_softc*) ;
 int FV_UNLOCK (struct fv_softc*) ;
 int fv_init_locked (struct fv_softc*) ;

__attribute__((used)) static void
fv_init(void *xsc)
{
 struct fv_softc *sc = xsc;

 FV_LOCK(sc);
 fv_init_locked(sc);
 FV_UNLOCK(sc);
}
