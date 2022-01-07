
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * c; } ;
struct TYPE_6__ {scalar_t__ blen1; TYPE_1__ bp1; } ;
struct TYPE_7__ {TYPE_2__ cw; int * smso; int * rmso; int * cuu1; int * cup; int * el; } ;
typedef TYPE_3__ CL_PRIVATE ;


 int free (int *) ;

__attribute__((used)) static void
cl_freecap(CL_PRIVATE *clp)
{
 if (clp->el != ((void*)0)) {
  free(clp->el);
  clp->el = ((void*)0);
 }
 if (clp->cup != ((void*)0)) {
  free(clp->cup);
  clp->cup = ((void*)0);
 }
 if (clp->cuu1 != ((void*)0)) {
  free(clp->cuu1);
  clp->cuu1 = ((void*)0);
 }
 if (clp->rmso != ((void*)0)) {
  free(clp->rmso);
  clp->rmso = ((void*)0);
 }
 if (clp->smso != ((void*)0)) {
  free(clp->smso);
  clp->smso = ((void*)0);
 }

 if (clp->cw.bp1.c != ((void*)0)) {
  free(clp->cw.bp1.c);
  clp->cw.bp1.c = ((void*)0);
  clp->cw.blen1 = 0;
 }
}
