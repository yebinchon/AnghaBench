
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcmsc_softc {int initialized; unsigned int width; unsigned int height; int fbswap; int va; } ;
typedef int phandle_t ;
typedef void* pcell_t ;
typedef int cell ;
typedef int bootargs ;


 unsigned int FB_HEIGHT ;
 unsigned int FB_WIDTH ;
 int OF_finddevice (char*) ;
 scalar_t__ OF_getencprop (int,char*,void**,int) ;
 scalar_t__ OF_getprop (int,char*,char**,int) ;
 int bcmfb_init (int ,int *,int ) ;
 struct bcmsc_softc bcmsc ;
 int fdt_find_compatible (int,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ strtol (char*,int *,int ) ;

__attribute__((used)) static int
bcmfb_configure(int flags)
{
 char bootargs[2048], *n, *p, *v;
 pcell_t cell;
 phandle_t chosen, display, root;
 struct bcmsc_softc *sc;

 sc = &bcmsc;
 if (sc->initialized)
  return (0);

 sc->width = 0;
 sc->height = 0;







 chosen = OF_finddevice("/chosen");
 if (chosen != -1 &&
     OF_getprop(chosen, "bootargs", &bootargs, sizeof(bootargs)) > 0) {
  p = bootargs;
  while ((v = strsep(&p, " ")) != ((void*)0)) {
   if (*v == '\0')
    continue;
   n = strsep(&v, "=");
   if (strcmp(n, "bcm2708_fb.fbwidth") == 0 && v != ((void*)0))
    sc->width = (unsigned int)strtol(v, ((void*)0), 0);
   else if (strcmp(n, "bcm2708_fb.fbheight") == 0 &&
       v != ((void*)0))
    sc->height = (unsigned int)strtol(v, ((void*)0), 0);
   else if (strcmp(n, "bcm2708_fb.fbswap") == 0 &&
       v != ((void*)0))
    if (*v == '1')
     sc->fbswap = 1;
  }
 }

 root = OF_finddevice("/");
 if ((root != -1) &&
     (display = fdt_find_compatible(root, "broadcom,bcm2835-fb", 1))) {
  if (sc->width == 0) {
   if ((OF_getencprop(display, "broadcom,width",
       &cell, sizeof(cell))) > 0)
    sc->width = cell;
  }

  if (sc->height == 0) {
   if ((OF_getencprop(display, "broadcom,height",
       &cell, sizeof(cell))) > 0)
    sc->height = cell;
  }
 }

 if (sc->width == 0)
  sc->width = FB_WIDTH;
 if (sc->height == 0)
  sc->height = FB_HEIGHT;

 bcmfb_init(0, &sc->va, 0);
 sc->initialized = 1;

 return (0);
}
