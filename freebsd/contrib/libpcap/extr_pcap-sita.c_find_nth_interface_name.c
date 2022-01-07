
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; struct TYPE_3__* next; scalar_t__ IOPname; } ;
typedef TYPE_1__ iface_t ;
struct TYPE_4__ {TYPE_1__* iface; int * ip; } ;


 int MAX_CHASSIS ;
 int MAX_GEOSLOT ;
 TYPE_2__** units ;

__attribute__((used)) static char *find_nth_interface_name(int n) {
 int chassis, geoslot;
 iface_t *p;
 char *last_name = 0;

 if (n < 0) n = 0;
 for (chassis = 0; chassis <= MAX_CHASSIS; chassis++) {
  for (geoslot = 0; geoslot <= MAX_GEOSLOT; geoslot++) {
   if (units[chassis][geoslot].ip != ((void*)0)) {
    p = units[chassis][geoslot].iface;
    while (p) {
     if (p->IOPname) last_name = p->name;
     if (n-- == 0) return last_name;
     p = p->next;
    }
   }
  }
 }

 if (last_name) return last_name;
 return "";
}
