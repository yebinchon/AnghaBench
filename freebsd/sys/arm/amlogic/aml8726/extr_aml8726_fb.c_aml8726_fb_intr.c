
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_fb_softc {int dummy; } ;


 int AML_FB_LOCK (struct aml8726_fb_softc*) ;
 int AML_FB_UNLOCK (struct aml8726_fb_softc*) ;

__attribute__((used)) static void
aml8726_fb_intr(void *arg)
{
 struct aml8726_fb_softc *sc = (struct aml8726_fb_softc *)arg;

 AML_FB_LOCK(sc);

 AML_FB_UNLOCK(sc);
}
