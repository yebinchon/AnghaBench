
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {scalar_t__ type; TYPE_1__* ps; } ;
struct TYPE_2__ {size_t pdfbytes; size_t pdflastpg; int pages; int pdfbody; int flags; int top; int psrow; scalar_t__* psmarg; } ;


 int PS_NEWPAGE ;
 scalar_t__ TERMFONT__MAX ;
 scalar_t__ TERMTYPE_PS ;
 int assert (int) ;
 int pdf_obj (struct termp*,size_t) ;
 int ps_printf (struct termp*,char*,...) ;

__attribute__((used)) static void
ps_closepage(struct termp *p)
{
 int i;
 size_t len, base;
 assert(p->ps->psmarg && p->ps->psmarg[0]);
 ps_printf(p, "%s", p->ps->psmarg);

 if (TERMTYPE_PS != p->type) {
  len = p->ps->pdfbytes - p->ps->pdflastpg;
  base = p->ps->pages * 4 + p->ps->pdfbody;

  ps_printf(p, "endstream\nendobj\n");


  pdf_obj(p, base + 1);
  ps_printf(p, "%zu\nendobj\n", len);


  pdf_obj(p, base + 2);
  ps_printf(p, "<<\n/ProcSet [/PDF /Text]\n");
  ps_printf(p, "/Font <<\n");
  for (i = 0; i < (int)TERMFONT__MAX; i++)
   ps_printf(p, "/F%d %d 0 R\n", i, 3 + i);
  ps_printf(p, ">>\n>>\nendobj\n");


  pdf_obj(p, base + 3);
  ps_printf(p, "<<\n");
  ps_printf(p, "/Type /Page\n");
  ps_printf(p, "/Parent 2 0 R\n");
  ps_printf(p, "/Resources %zu 0 R\n", base + 2);
  ps_printf(p, "/Contents %zu 0 R\n", base);
  ps_printf(p, ">>\nendobj\n");
 } else
  ps_printf(p, "showpage\n");

 p->ps->pages++;
 p->ps->psrow = p->ps->top;
 assert( ! (PS_NEWPAGE & p->ps->flags));
 p->ps->flags |= PS_NEWPAGE;
}
