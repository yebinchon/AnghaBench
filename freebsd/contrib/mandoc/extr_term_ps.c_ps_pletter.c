
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct termp {scalar_t__ type; TYPE_1__* ps; } ;
struct TYPE_6__ {TYPE_2__* gly; } ;
struct TYPE_5__ {scalar_t__ wx; } ;
struct TYPE_4__ {int flags; int pages; int pdfbody; size_t pscol; size_t psrow; scalar_t__ lastrow; scalar_t__ lastf; int scale; int pdfbytes; int pdflastpg; } ;


 int AFM2PNT (struct termp*,size_t) ;
 int MAXCHAR ;
 int PS_INLINE ;
 int PS_NEWPAGE ;
 scalar_t__ TERMTYPE_PS ;
 int assert (int) ;
 TYPE_3__* fonts ;
 int pdf_obj (struct termp*,int) ;
 int ps_printf (struct termp*,char*,...) ;
 int ps_putchar (struct termp*,char) ;

__attribute__((used)) static void
ps_pletter(struct termp *p, int c)
{
 int f;






 if (PS_NEWPAGE & p->ps->flags) {
  if (TERMTYPE_PS == p->type) {
   ps_printf(p, "%%%%Page: %zu %zu\n",
       p->ps->pages + 1, p->ps->pages + 1);
   ps_printf(p, "f%d\n", (int)p->ps->lastf);
  } else {
   pdf_obj(p, p->ps->pdfbody +
       p->ps->pages * 4);
   ps_printf(p, "<<\n");
   ps_printf(p, "/Length %zu 0 R\n",
       p->ps->pdfbody + 1 + p->ps->pages * 4);
   ps_printf(p, ">>\nstream\n");
  }
  p->ps->pdflastpg = p->ps->pdfbytes;
  p->ps->flags &= ~PS_NEWPAGE;
 }






 if ( ! (PS_INLINE & p->ps->flags)) {
  if (TERMTYPE_PS != p->type) {
   ps_printf(p, "BT\n/F%d %zu Tf\n",
       (int)p->ps->lastf, p->ps->scale);
   ps_printf(p, "%.3f %.3f Td\n(",
       AFM2PNT(p, p->ps->pscol),
       AFM2PNT(p, p->ps->psrow));
  } else {
   ps_printf(p, "%.3f", AFM2PNT(p, p->ps->pscol));
   if (p->ps->psrow != p->ps->lastrow)
    ps_printf(p, " %.3f",
        AFM2PNT(p, p->ps->psrow));
   ps_printf(p, "(");
  }
  p->ps->flags |= PS_INLINE;
 }

 assert( ! (PS_NEWPAGE & p->ps->flags));
 switch (c) {
 case '(':
 case ')':
 case '\\':
  ps_putchar(p, '\\');
  break;
 default:
  break;
 }



 f = (int)p->ps->lastf;

 if (c <= 32 || c - 32 >= MAXCHAR)
  c = 32;

 ps_putchar(p, (char)c);
 c -= 32;
 p->ps->pscol += (size_t)fonts[f].gly[c].wx;
}
