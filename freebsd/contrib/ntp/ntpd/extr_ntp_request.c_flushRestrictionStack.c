
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* link; } ;
typedef TYPE_1__ RestrictStackT ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
flushRestrictionStack(
 RestrictStackT **spp
 )
{
 RestrictStackT *sp;

 while (((void*)0) != (sp = *spp)) {
  *spp = sp->link;
  free(sp);
 }
}
