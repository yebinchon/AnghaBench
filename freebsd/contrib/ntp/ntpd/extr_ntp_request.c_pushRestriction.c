
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int restrict_u ;
struct TYPE_5__ {size_t fcnt; int const** pres; struct TYPE_5__* link; } ;
typedef TYPE_1__ RestrictStackT ;


 int TRUE ;
 TYPE_1__* emalloc (int) ;
 size_t getStackSheetSize (TYPE_1__*) ;

__attribute__((used)) static int
pushRestriction(
 RestrictStackT **spp,
 const restrict_u *ptr
 )
{
 RestrictStackT *sp;

 if (((void*)0) == (sp = *spp) || 0 == sp->fcnt) {

  sp = emalloc(sizeof(*sp));
  sp->link = *spp;
  sp->fcnt = getStackSheetSize(sp);
  *spp = sp;
 }
 sp->pres[--sp->fcnt] = ptr;
 return TRUE;
}
