
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* imsg; } ;
typedef TYPE_1__ unit_t ;


 int empty_unit_iface (TYPE_1__*) ;
 int errno ;
 int fprintf (int ,char*,int) ;
 scalar_t__ realloc (void*,int) ;
 int stderr ;
 TYPE_1__** units ;

__attribute__((used)) static void empty_unit(int chassis, int geoslot) {
 unit_t *u = &units[chassis][geoslot];

 empty_unit_iface(u);
 if (u->imsg) {
  void *bigger_buffer;

  bigger_buffer = (char *)realloc(u->imsg, 1);
  if (bigger_buffer == ((void*)0)) {
   fprintf(stderr, "Warning...call to realloc() failed, value of errno is %d\n", errno);
   return;
  }
  u->imsg = bigger_buffer;
 }
}
