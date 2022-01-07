
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_softc {int dummy; } ;


 int LOCK (struct host1x_softc*) ;
 int UNLOCK (struct host1x_softc*) ;

__attribute__((used)) static void
host1x_syncpt_intr(void *arg)
{
 struct host1x_softc *sc;

 sc = (struct host1x_softc *)arg;
 LOCK(sc);
 UNLOCK(sc);
}
