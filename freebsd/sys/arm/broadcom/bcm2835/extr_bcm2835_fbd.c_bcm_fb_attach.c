
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcmsc_softc {int fbswap; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;
typedef int bootargs ;


 int OF_finddevice (char*) ;
 scalar_t__ OF_getprop (int,char*,char**,int) ;
 int bcm_fb_setup_fbd (struct bcmsc_softc*) ;
 int bcm_fb_sysctl_init (struct bcmsc_softc*) ;
 struct bcmsc_softc* device_get_softc (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
bcm_fb_attach(device_t dev)
{
 char bootargs[2048], *n, *p, *v;
 int err;
 phandle_t chosen;
 struct bcmsc_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;


 sc->fbswap = 0;
 chosen = OF_finddevice("/chosen");
 if (chosen != -1 &&
     OF_getprop(chosen, "bootargs", &bootargs, sizeof(bootargs)) > 0) {
  p = bootargs;
  while ((v = strsep(&p, " ")) != ((void*)0)) {
   if (*v == '\0')
    continue;
   n = strsep(&v, "=");
   if (strcmp(n, "bcm2708_fb.fbswap") == 0 && v != ((void*)0))
    if (*v == '1')
     sc->fbswap = 1;
                }
        }

 bcm_fb_sysctl_init(sc);

 err = bcm_fb_setup_fbd(sc);
 if (err)
  return (err);

 return (0);
}
