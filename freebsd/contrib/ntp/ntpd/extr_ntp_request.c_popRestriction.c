
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int restrict_u ;
struct TYPE_5__ {scalar_t__ fcnt; struct TYPE_5__* link; int ** pres; } ;
typedef TYPE_1__ RestrictStackT ;


 int FALSE ;
 int TRUE ;
 int free (TYPE_1__*) ;
 scalar_t__ getStackSheetSize (TYPE_1__*) ;

__attribute__((used)) static int
popRestriction(
 RestrictStackT **spp,
 const restrict_u **opp
 )
{
 RestrictStackT *sp;

 if (((void*)0) == (sp = *spp) || sp->fcnt >= getStackSheetSize(sp))
  return FALSE;

 *opp = sp->pres[sp->fcnt++];
 if (sp->fcnt >= getStackSheetSize(sp)) {

  *spp = sp->link;
  free(sp);
 }
 return TRUE;
}
