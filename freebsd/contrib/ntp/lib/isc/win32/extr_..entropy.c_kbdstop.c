
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kbd; } ;
typedef TYPE_1__ isc_entropysource_t ;


 int UNUSED (void*) ;
 int fprintf (int ,char*) ;
 int isc_keyboard_canceled (int *) ;
 int isc_keyboard_close (int *,int) ;
 int stderr ;

__attribute__((used)) static void
kbdstop(isc_entropysource_t *source, void *arg) {

 UNUSED(arg);

 if (! isc_keyboard_canceled(&source->kbd))
  fprintf(stderr, "stop typing.\r\n");

 (void)isc_keyboard_close(&source->kbd, 3);
}
