
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct valuelist {struct valuelist* name; struct valuelist* next; } ;


 int free (struct valuelist*) ;
 struct valuelist* protolist ;

void
res_destroyprotolist(void) {
 struct valuelist *plp, *plp_next;

 for (plp = protolist; plp != ((void*)0); plp = plp_next) {
  plp_next = plp->next;
  free(plp->name);
  free(plp);
 }
 protolist = (struct valuelist *)0;
}
