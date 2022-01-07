
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* r_dname; } ;
typedef TYPE_1__ ns_updrec ;


 int free (TYPE_1__*) ;

void
res_freeupdrec(ns_updrec *rrecp) {

 if (rrecp->r_dname != ((void*)0))
  free(rrecp->r_dname);
 free(rrecp);
}
