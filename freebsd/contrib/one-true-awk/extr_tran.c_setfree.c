
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tval; int sval; } ;
typedef TYPE_1__ Cell ;


 int * CONVFMT ;
 int DONTFREE ;
 int * FILENAME ;
 int * FS ;
 int * OFMT ;
 int * OFS ;
 int * ORS ;
 int * RS ;
 int * SUBSEP ;

__attribute__((used)) static void
setfree(Cell *vp)
{
 if (&vp->sval == FS || &vp->sval == RS ||
     &vp->sval == OFS || &vp->sval == ORS ||
     &vp->sval == OFMT || &vp->sval == CONVFMT ||
     &vp->sval == FILENAME || &vp->sval == SUBSEP)
  vp->tval |= DONTFREE;
 else
  vp->tval &= ~DONTFREE;
}
