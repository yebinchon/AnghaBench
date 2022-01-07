
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {TYPE_1__* ps; } ;
struct TYPE_2__ {char last; int flags; int nextf; size_t pscol; size_t pscolnext; } ;


 int PS_BACKSP ;
 size_t SIZE_MAX ;



 int assert (int) ;
 int ps_pclose (struct termp*) ;
 int ps_plast (struct termp*) ;

__attribute__((used)) static void
ps_letter(struct termp *p, int arg)
{
 size_t savecol;
 char c;

 c = arg >= 128 || arg <= 0 ? '?' : arg;







 if (c == '\b') {
  assert(p->ps->last != '\0');
  assert( ! (p->ps->flags & PS_BACKSP));
  p->ps->flags |= PS_BACKSP;
  return;
 }





 if (p->ps->flags & PS_BACKSP) {
  if (p->ps->last == '_') {
   switch (p->ps->nextf) {
   case 130:
    break;
   case 129:
    p->ps->nextf = 130;
    break;
   default:
    p->ps->nextf = 128;
   }
   p->ps->last = c;
   p->ps->flags &= ~PS_BACKSP;
   return;
  }
  if (p->ps->last == c) {
   switch (p->ps->nextf) {
   case 130:
    break;
   case 128:
    p->ps->nextf = 130;
    break;
   default:
    p->ps->nextf = 129;
   }
   p->ps->flags &= ~PS_BACKSP;
   return;
  }






  savecol = p->ps->pscol;
 } else
  savecol = SIZE_MAX;







 ps_plast(p);







 p->ps->last = c;
 if (savecol != SIZE_MAX) {
  if (p->ps->pscolnext < p->ps->pscol)
   p->ps->pscolnext = p->ps->pscol;
  ps_pclose(p);
  p->ps->pscol = savecol;
  p->ps->flags &= ~PS_BACKSP;
 } else
  p->ps->pscolnext = 0;
}
