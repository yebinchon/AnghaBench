
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* iface; } ;
typedef TYPE_1__ unit_t ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* IOPname; struct TYPE_6__* name; } ;
typedef TYPE_2__ iface_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void empty_unit_iface(unit_t *u) {
 iface_t *p, *cur;

 cur = u->iface;
 while (cur) {
  if (cur->name) free(cur->name);
  if (cur->IOPname) free(cur->IOPname);
  p = cur->next;
  free(cur);
  cur = p;
 }
 u->iface = 0;
}
