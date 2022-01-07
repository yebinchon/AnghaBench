
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iodesc {char* myea; } ;
typedef int phandle_t ;


 scalar_t__ OF_call_method (char*,int,int,int,int,char**) ;
 int OF_enter () ;
 int OF_finddevice (char*) ;
 int OF_getprop (int ,char*,char*,int) ;
 int OF_open (char*) ;
 int chosen ;
 char* dmabuf ;
 char* ether_sprintf (char*) ;
 int netinstance ;
 int printf (char*,...) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
ofwn_init(struct iodesc *desc, void *machdep_hint)
{
 phandle_t netdev;
 char path[64];
 char *ch;
 int pathlen;

 pathlen = OF_getprop(chosen, "bootpath", path, 64);
 if ((ch = strchr(path, ':')) != ((void*)0))
  *ch = '\0';
 netdev = OF_finddevice(path);



 if (OF_getprop(netdev, "local-mac-address", desc->myea, 6) == -1)

  goto punt;

 printf("boot: ethernet address: %s\n", ether_sprintf(desc->myea));

 if ((netinstance = OF_open(path)) == -1) {
  printf("Could not open network device.\n");
  goto punt;
 }






 dmabuf = ((void*)0);
 if (OF_call_method("dma-alloc", netinstance, 1, 1, (64 * 1024), &dmabuf)
     < 0) {
  printf("Failed to allocate DMA buffer (got %p).\n", dmabuf);
  goto punt;
 }






 return;

punt:
 printf("\n");
 printf("Could not boot from %s.\n", path);
 OF_enter();
}
